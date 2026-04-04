function Export-IntuneSettingsCatalogPolicyReport {
    <#
.SYNOPSIS
Exports one or more Intune Settings Catalog policies to a markdown and/or csv report.
.DESCRIPTION
Retrieves settings for one or more Settings Catalog policies via Microsoft Graph and produces a formatted Markdown file. 
.PARAMETER PolicyName
One or more policy display names to include in the report.
.PARAMETER All
Include all Settings Catalog policies in the report.
.PARAMETER OutputDir
Directory where output files are saved. Defaults to the current directory.
.PARAMETER OutputFormat
Output format: Markdown, Csv, or All. Defaults to Markdown.
.EXAMPLE
Export-IntuneSettingsCatalogMarkdownReport -PolicyName "Windows Security Baseline" -outputFormat "Markdown"
.EXAMPLE
Export-IntuneSettingsCatalogMarkdownReport -PolicyName "Policy A","Policy B" -OutputDir "C:\Reports" -outputFormat "Csv"
.EXAMPLE
Export-IntuneSettingsCatalogMarkdownReport -All -outputFormat "All"
.EXAMPLE
Export-IntuneSettingsCatalogMarkdownReport
# Opens Out-GridView for interactive policy selection.
#>

    [CmdletBinding(DefaultParameterSetName = 'Interactive')]
    Param(
        [Parameter(Mandatory = $false, ParameterSetName = 'ByName')]
        [string[]]$PolicyName,
        [Parameter(Mandatory = $false, ParameterSetName = 'All')]
        [switch]$All,
        [string]$OutputDir,
        [ValidateSet('Markdown', 'Csv', 'All')]
        [string]$OutputFormat = 'Markdown'
    )

    #region Auth check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please connect to Microsoft Graph."
        Break
    }
    #endregion

    #region Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    $OutputFilePath    = "$OutputDir\$FunctionName-$date.md"
    $CsvOutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    #endregion

    #region Load all policies from Graph
    $uri = "https://graph.microsoft.com/beta/deviceManagement/configurationPolicies"
    $response = Invoke-MgGraphRequest -Uri $uri -Method GET
    $AllPolicies = $response.value

    while ($response.'@odata.nextLink') {
        $response = Invoke-MgGraphRequest -Uri $response.'@odata.nextLink' -Method GET
        $AllPolicies += $response.value
    }
    #endregion

    #region Select policies
    $Policies = @()
    switch ($PSCmdlet.ParameterSetName) {

        'ByName' {
            foreach ($name in $PolicyName) {
                $p = $AllPolicies | Where-Object { $_.name -eq $name }
                if ($p) { $Policies += $p }
                else { Write-Warning "Policy name '$name' not found." }
            }
        }

        'All' {
            $Policies = $AllPolicies
        }

        'Interactive' {
            $Policies = $AllPolicies |
            Select-Object name, description, platforms, technologies, id |
            Out-GridView -Title "Select one or more policies to include in the report" -PassThru
        }
    }

    if ($Policies.Count -eq 0) {
        Write-Warning "No policies selected."
        return
    }
    #endregion

    #region Collect settings for each policy
    $PolicyDataList = @()
    $SettingPolicyMap = @{}   # settingDefinitionId = List[policyName]
    $SettingValueMap = @{}   # "settingDefId||value" = List[policyName]

    foreach ($policy in $Policies) {

        Write-Output "Processing: $($policy.name)"

        # Get settings with definitions expanded
        $uri = "https://graph.microsoft.com/beta/deviceManagement/configurationPolicies('$($policy.id)')/settings?`$expand=settingDefinitions"
        $response = Invoke-MgGraphRequest -Uri $uri -Method GET
        $rawSettings = $response.value

        while ($response.'@odata.nextLink') {
            $response = Invoke-MgGraphRequest -Uri $response.'@odata.nextLink' -Method GET
            $rawSettings += $response.value
        }

        # Build definition lookup: settingDefinitionId = definition object
        $DefLookup = @{}
        foreach ($item in $rawSettings) {
            if ($item.settingDefinitions) {
                foreach ($def in $item.settingDefinitions) {
                    if (-not $DefLookup.ContainsKey($def.id)) {
                        $DefLookup[$def.id] = $def
                    }
                }
            }
        }

        # Flatten setting instances
        $PolicySettings = @()

        foreach ($item in $rawSettings) {
            $stack = [System.Collections.ArrayList]::new()
            [void]$stack.Add([PSCustomObject]@{ Instance = $item.settingInstance; Depth = 0 })

            while ($stack.Count -gt 0) {
                $frame = $stack[$stack.Count - 1]
                $stack.RemoveAt($stack.Count - 1)

                $inst = $frame.Instance
                $depth = $frame.Depth
                if (-not $inst) { continue }

                $defId = $inst.settingDefinitionId
                $odataType = $inst.'@odata.type'

                $def = if ($DefLookup.ContainsKey($defId)) { $DefLookup[$defId] } else { $null }
                $displayName = if ($def) { $def.displayName } else { $defId }

                $value = switch -Regex ($odataType) {

                    'choiceSettingInstance$' {
                        $raw = $inst.choiceSettingValue.value
                        if ($def -and $def.options) {
                            $opt = $def.options |
                            Where-Object { $_.itemId -eq $raw } |
                            Select-Object -First 1
                            if ($opt) { $opt.displayName } else { $raw }
                        }
                        else { $raw }
                    }

                    'simpleSettingInstance$' {
                        [string]$inst.simpleSettingValue.value
                    }

                    'simpleSettingCollectionInstance$' {
                        ($inst.simpleSettingCollectionValue | ForEach-Object { [string]$_.value }) -join '; '
                    }

                    'choiceSettingCollectionInstance$' {
                        $vals = foreach ($c in $inst.choiceSettingCollectionValue) {
                            $cv = $c.value
                            if ($def -and $def.options) {
                                $opt = $def.options |
                                Where-Object { $_.itemId -eq $cv } |
                                Select-Object -First 1
                                if ($opt) { $opt.displayName } else { $cv }
                            }
                            else { $cv }
                        }
                        $vals -join '; '
                    }

                    'groupSettingInstance$' { '' }
                    'groupSettingCollectionInstance$' { '' }
                    default { $odataType }
                }

                # Info URL — first entry from infoUrls
                $infoUrl = ''
                if ($def -and $def.infoUrls -and $def.infoUrls.Count -gt 0) {
                    $infoUrl = "[Docs]($($def.infoUrls[0]))"
                }

                # Platform from the definition applicability
                $defPlatform = if ($def -and $def.applicability -and $def.applicability.platform) {
                    $def.applicability.platform
                } else { '' }

                # Windows SKUs — $null means not a Windows setting (SKUs not applicable).
                # Empty array means Windows setting where all SKUs are supported.
                $isWindowsSetting = $defPlatform -match 'windows'
                $supportedSkus = if (-not $isWindowsSetting) {
                    $null
                } elseif ($def.applicability.windowsSkus) {
                    @($def.applicability.windowsSkus)
                } else { @() }

                $PolicySettings += [PSCustomObject]@{
                    SettingDefinitionId = $defId
                    DisplayName         = $displayName
                    Value               = $value
                    Depth               = $depth
                    InfoUrl             = $infoUrl
                    Platform            = $defPlatform
                    WindowsSkus         = $supportedSkus
                }

                # Push children in reverse so first child processes first
                $children = $null
                if ($odataType -match 'choiceSettingInstance$') {
                    $children = @($inst.choiceSettingValue.children)
                }
                elseif ($odataType -match 'groupSettingInstance$') {
                    $children = @($inst.groupSettingValue.children)
                }
                elseif ($odataType -match 'groupSettingCollectionInstance$') {
                    $children = @($inst.groupSettingCollectionValue | ForEach-Object { $_.children })
                }

                if ($children) {
                    for ($i = $children.Count - 1; $i -ge 0; $i--) {
                        [void]$stack.Add([PSCustomObject]@{ Instance = $children[$i]; Depth = $depth + 1 })
                    }
                }
            }
        }

        # Track settingDefinitionId = policies and settingDefId+value = policies
        foreach ($s in $PolicySettings) {
            if (-not $SettingPolicyMap.ContainsKey($s.SettingDefinitionId)) {
                $SettingPolicyMap[$s.SettingDefinitionId] = [System.Collections.Generic.List[string]]::new()
            }
            if ($SettingPolicyMap[$s.SettingDefinitionId] -notcontains $policy.name) {
                $SettingPolicyMap[$s.SettingDefinitionId].Add($policy.name)
            }

            $valueKey = "$($s.SettingDefinitionId)||$($s.Value)"
            if (-not $SettingValueMap.ContainsKey($valueKey)) {
                $SettingValueMap[$valueKey] = [System.Collections.Generic.List[string]]::new()
            }
            if ($SettingValueMap[$valueKey] -notcontains $policy.name) {
                $SettingValueMap[$valueKey].Add($policy.name)
            }
        }

        $PolicyDataList += [PSCustomObject]@{
            Name        = $policy.name
            Description = $policy.description
            Platform    = $policy.platforms
            Settings    = $PolicySettings
        }
    }

    # settingDefinitionId appears in multiple policies
    $DuplicateIds = $SettingPolicyMap.Keys | Where-Object { $SettingPolicyMap[$_].Count -gt 1 }
    # settingDefinitionId appears in exactly 1 policy
    $UniqueIds = $SettingPolicyMap.Keys | Where-Object { $SettingPolicyMap[$_].Count -eq 1 }
    # same settingDefinitionId + same value in multiple policies
    $DuplicateValueKeys = $SettingValueMap.Keys | Where-Object { $SettingValueMap[$_].Count -gt 1 }
    # settingDefinitionId in multiple policies with at least one differing value
    $ConflictIds = $DuplicateIds | Where-Object {
        $defId = $_
        ($SettingValueMap.Keys | Where-Object { ($_ -split '\|\|', 2)[0] -eq $defId }).Count -gt 1
    }
    #endregion

    #region Build Markdown
    $md = [System.Text.StringBuilder]::new()

    $null = $md.AppendLine("# Intune Settings Catalog Policy Report")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("**Generated:** $(Get-Date -Format 'yyyy-MM-dd HH:mm')")
    $null = $md.AppendLine("")

    # Summary table
    $null = $md.AppendLine("## Policies")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("| Policy Name | Platform | Top-Level Settings |")
    $null = $md.AppendLine("| --- | --- | --- |")
    foreach ($pd in $PolicyDataList) {
        $topCount = ($pd.Settings | Where-Object { $_.Depth -eq 0 }).Count
        $null = $md.AppendLine("| $($pd.Name) | $($pd.Platform) | $topCount |")
    }
    $null = $md.AppendLine("")

    if ($DuplicateIds.Count -gt 0) {
        $null = $md.AppendLine(">  **Bold** = same setting in multiple policies with the same value.")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("> *Italic* = same setting in multiple policies with differing values.")
        $null = $md.AppendLine("")
    }

    # Per-policy sections
    foreach ($pd in $PolicyDataList) {
        $null = $md.AppendLine("---")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("### $($pd.Name)")
        $null = $md.AppendLine("")
        if ($pd.Description) {
            $null = $md.AppendLine("*$($pd.Description)*")
            $null = $md.AppendLine("")
        }
        $null = $md.AppendLine("**Platform:** $($pd.Platform)")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |")
        $null = $md.AppendLine("| --- | --- | --- | --- | --- | --- |")

        $allSkus = @(
            'windowsHome', 'windowsProfessional', 'windowsEnterprise', 'windowsEducation', 'windowsMultiSession',
            'windowsCloudN', 'windowsCPC', 'windows11SE', 'iotEnterprise', 'iotEnterpriseSEval',
            'surfaceHub', 'hololens', 'hololensEnterprise', 'holographicForBusiness'
        )

        foreach ($s in $pd.Settings) {
            $isDupe     = $DuplicateIds -contains $s.SettingDefinitionId
            $valueKey   = "$($s.SettingDefinitionId)||$($s.Value)"
            $isConflict = $isDupe -and ($SettingValueMap[$valueKey].Count -lt $SettingPolicyMap[$s.SettingDefinitionId].Count)

            # Wrap display name in a doc link if one is available
            $linkedName = if ($s.InfoUrl) {
                $url = $s.InfoUrl -replace '^\[Docs\]\(|\)$', ''
                "[$($s.DisplayName)]($url)"
            } else { $s.DisplayName }

            $formatted = if ($isConflict) { "*$linkedName*" } elseif ($isDupe) { "**$linkedName**" } else { $linkedName }

            if ($s.Depth -eq 0) {
                $settingCell    = $formatted
                $subSettingCell = ""
            }
            else {
                $settingCell    = ""
                $subSettingCell = $formatted
            }

            if ($null -eq $s.WindowsSkus) {
                $supportedCell   = ''
                $unsupportedCell = ''
            } else {
                $supportedCell   = ($allSkus | Where-Object { $s.WindowsSkus.Count -eq 0 -or $s.WindowsSkus -contains $_ } | ForEach-Object { $_ -replace '^windows', '' }) -join '<br>'
                $unsupportedCell = ($allSkus | Where-Object { $s.WindowsSkus.Count -gt 0 -and $s.WindowsSkus -notcontains $_ } | ForEach-Object { $_ -replace '^windows', '' }) -join '<br>'
            }

            $null = $md.AppendLine("| $settingCell | $subSettingCell | $($s.Value) | $($s.Platform) | $supportedCell | $unsupportedCell |")
        }
        $null = $md.AppendLine("")
    }

    # Conflicting Settings
    $null = $md.AppendLine("---")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("## Values")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("### Conflicting Values")
    $null = $md.AppendLine("")

    if ($ConflictIds.Count -gt 0) {
        $null = $md.AppendLine("The following settings are configured in multiple policies with different values.")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("| Setting | Policy | Value |")
        $null = $md.AppendLine("| --- | --- | --- |")

        foreach ($defId in ($ConflictIds | Sort-Object)) {
            $displayName = $defId
            foreach ($pd in $PolicyDataList) {
                $match = $pd.Settings | Where-Object { $_.SettingDefinitionId -eq $defId } | Select-Object -First 1
                if ($match) { $displayName = $match.DisplayName; break }
            }
            foreach ($policyName in ($SettingPolicyMap[$defId] | Sort-Object)) {
                $pd  = $PolicyDataList | Where-Object { $_.Name -eq $policyName }
                $val = ($pd.Settings | Where-Object { $_.SettingDefinitionId -eq $defId } | Select-Object -First 1).Value
                $null = $md.AppendLine("| $displayName | $policyName | $val |")
                $displayName = ""   # only show setting name on first row
            }
        }
    }
    else {
        $null = $md.AppendLine("No conflicting settings found.")
    }
    $null = $md.AppendLine("")

    # Duplicate Values
    $null = $md.AppendLine("---")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("### Duplicate Values")
    $null = $md.AppendLine("")

    if ($DuplicateValueKeys.Count -gt 0) {
        $null = $md.AppendLine("The following settings have identical values configured in multiple policies.")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("| Setting | Policy | Value |")
        $null = $md.AppendLine("| --- | --- | --- |")

        foreach ($key in ($DuplicateValueKeys | Sort-Object)) {
            $defId, $val = $key -split '\|\|', 2
            $displayName = $defId
            foreach ($pd in $PolicyDataList) {
                $match = $pd.Settings | Where-Object { $_.SettingDefinitionId -eq $defId } | Select-Object -First 1
                if ($match) { $displayName = $match.DisplayName; break }
            }
            foreach ($policyName in ($SettingValueMap[$key] | Sort-Object)) {
                $null = $md.AppendLine("| $displayName | $policyName | $val |")
                $displayName = ""
            }
        }
    }
    else {
        $null = $md.AppendLine("No duplicate values found.")
    }
    $null = $md.AppendLine("")

    # Unique Values
    $null = $md.AppendLine("---")
    $null = $md.AppendLine("")
    $null = $md.AppendLine("### Unique Values")
    $null = $md.AppendLine("")

    if ($UniqueIds.Count -gt 0) {
        $null = $md.AppendLine("The following settings are configured in only one policy.")
        $null = $md.AppendLine("")
        $null = $md.AppendLine("| Setting | Value | Policy |")
        $null = $md.AppendLine("| --- | --- | --- |")

        foreach ($defId in ($UniqueIds | Sort-Object)) {
            $policyName = $SettingPolicyMap[$defId][0]
            $pd = $PolicyDataList | Where-Object { $_.Name -eq $policyName }
            $match = $pd.Settings | Where-Object { $_.SettingDefinitionId -eq $defId } | Select-Object -First 1
            $displayName = if ($match) { $match.DisplayName } else { $defId }
            $val = if ($match) { $match.Value } else { "" }
            $null = $md.AppendLine("| $displayName | $val | $policyName |")
        }
    }
    else {
        $null = $md.AppendLine("No unique values found.")
    }
    $null = $md.AppendLine("")
    #endregion

    #region Write output
    if ($OutputFormat -in 'Markdown', 'All') {
        $md.ToString() | Out-File -FilePath $OutputFilePath -Encoding UTF8

        if (Test-Path $OutputFilePath) {
            Write-Output "Markdown file = $OutputFilePath."
        }
        else {
            Write-Warning "No Markdown file created."
        }
    }

    if ($OutputFormat -in 'Csv', 'All') {
        $csvAllSkus = @(
            'windowsHome', 'windowsProfessional', 'windowsEnterprise', 'windowsEducation', 'windowsMultiSession',
            'windowsCloudN', 'windowsCPC', 'windows11SE', 'iotEnterprise', 'iotEnterpriseSEval',
            'surfaceHub', 'hololens', 'hololensEnterprise', 'holographicForBusiness'
        )

        $csvRows = foreach ($pd in $PolicyDataList) {
            foreach ($s in $pd.Settings) {
                $supported   = if ($null -eq $s.WindowsSkus) { '' } else { ($csvAllSkus | Where-Object { $s.WindowsSkus.Count -eq 0 -or $s.WindowsSkus -contains $_ } | ForEach-Object { $_ -replace '^windows', '' }) -join '; ' }
                $unsupported = if ($null -eq $s.WindowsSkus) { '' } else { ($csvAllSkus | Where-Object { $s.WindowsSkus.Count -gt 0 -and $s.WindowsSkus -notcontains $_ } | ForEach-Object { $_ -replace '^windows', '' }) -join '; ' }
                $valueKey    = "$($s.SettingDefinitionId)||$($s.Value)"
                [PSCustomObject]@{
                    Policy             = $pd.Name
                    Setting            = if ($s.Depth -eq 0) { $s.DisplayName } else { '' }
                    SubSetting         = if ($s.Depth -gt 0) { $s.DisplayName } else { '' }
                    Value              = $s.Value
                    InfoUrl            = $s.InfoUrl -replace '^\[Docs\]\(|\)$', ''
                    SupportedPlatform  = $s.Platform
                    SupportedSKUs      = $supported
                    UnsupportedSKUs    = $unsupported
                    Unique             = if ($UniqueIds -contains $s.SettingDefinitionId) { 'x' } else { '' }
                    Duplicate          = if ($DuplicateValueKeys -contains $valueKey) { 'x' } else { '' }
                    Conflicting        = if ($ConflictIds -contains $s.SettingDefinitionId) { 'x' } else { '' }
                }
            }
        }

        $csvRows | Export-Csv -Path $CsvOutputFilePath -NoTypeInformation -Encoding UTF8

        if (Test-Path $CsvOutputFilePath) {
            Write-Output "CSV file = $CsvOutputFilePath."
        }
        else {
            Write-Warning "No CSV file created."
        }
    }
    #endregion
}
