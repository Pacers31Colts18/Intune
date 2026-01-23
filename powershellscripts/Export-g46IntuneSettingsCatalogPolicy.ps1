Function Export-g46IntuneSettingsCatalogPolicy {
    <#
    .SYNOPSIS
    Export .JSON of a settings catalog policy
    .DESCRIPTION
    Export .JSON of a settings catalog policy. If -All parameter is not used, function will export a specified profile by ID.
    .EXAMPLE
    Export-g46IntuneSettingsCatalogPolicy
    .PARAMETER All
    Export all settings catalog policies to .JSON
    .NOTES
    https://github.com/microsoftgraph/powershell-intune-samples/blob/master/SettingsCatalog/SettingsCatalog_Export.ps1
    #>
    
    Param(
        [Parameter(Mandatory = $false)]
        [string]$PolicyId,
        [Parameter(Mandatory = $false)]
        [switch]$All,
        [string]$OutputDir = "\\g46pawfs004.state.mn.gov\esm\Intune_Backup"
    )
    
    #Declarations
    $FunctionName = $MyInvocation.MyCommand.Name.ToString()
    $date = Get-Date -Format yyyyMMdd-HHmm
    if ($OutputDir.Length -eq 0) { $OutputDir = $pwd }
    #$OutputFilePath = "$OutputDir\$FunctionName-$date.csv"
    #$LogFilePath = "$OutputDir\$FunctionName-$date.log"

    #Microsoft Graph Connection check
    if ($null -eq (Get-MgContext)) {
        Write-Error "Authentication needed. Please call Connect-g46GraphAppDelegated."
        Break
    }
   
    #Parameter logic
    if ($PolicyId) {
        $Policies = Get-MgBetaDeviceManagementConfigurationPolicy -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
    }
    if ($All) {        
        $Policies = Get-MgBetaDeviceManagementConfigurationPolicy -All -ErrorAction SilentlyContinue 
    }
    if ($PSBoundParameters.Values.Count -eq 0)
    {
        [string]$PolicyId= (Read-Host -Prompt 'Please specify the policy ID')
        $Policies = Get-MgBetaDeviceManagementConfigurationPolicy -DeviceManagementConfigurationPolicyId $PolicyId -ErrorAction SilentlyContinue
    }

    #Obtain policies
    if ($Policies) {
        
        foreach ($policy in $Policies) {
        
            Write-Host $policy.name -ForegroundColor Cyan
        
            $AllSettingsInstances = @()
        
            $policyid = $policy.id
            $Policy_Technologies = $policy.technologies
            $Policy_Platforms = $Policy.platforms
            $Policy_Name = $Policy.name
            $Policy_Description = $policy.description
        
            $PolicyBody = New-Object -TypeName PSObject
        
            Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'name' -Value "$Policy_Name"
            Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'description' -Value "$Policy_Description"
            Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'platforms' -Value "$Policy_Platforms"
            Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'technologies' -Value "$Policy_Technologies"
        
            # Checking if policy has a templateId associated
            if ($policy.templateReference.templateId) {
        
                Write-Host "Found template reference" -f Cyan
                $templateId = $policy.templateReference.templateId
                $PolicyTemplateReference = New-Object -TypeName PSObject
                Add-Member -InputObject $PolicyTemplateReference -MemberType 'NoteProperty' -Name 'templateId' -Value $templateId
                Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'templateReference' -Value $PolicyTemplateReference
        
            }
        
            $SettingInstances = Get-SettingsCatalogPolicySettings -policyid $policyid
            $Instances = $SettingInstances.settingInstance
        
            foreach ($object in $Instances) {
        
                $Instance = New-Object -TypeName PSObject
        
                Add-Member -InputObject $Instance -MemberType 'NoteProperty' -Name 'settingInstance' -Value $object
                $AllSettingsInstances += $Instance
        
            }
        
            Add-Member -InputObject $PolicyBody -MemberType 'NoteProperty' -Name 'settings' -Value @($AllSettingsInstances)
            #Write output to directory
            if (!(Test-Path "$OutputDir\SCPexport\$date\")) {
                New-Item -ItemType Directory -Path "$OutputDir\SCPexport\$date" | Out-Null
            }
            Export-JSONData -JSON $PolicyBody -ExportPath "$OutputDir\SCPexport\$date"
            Write-Host
        
        }
    }
    else {
        Write-Host "No Settings Catalog policies found..." -ForegroundColor Red
        Write-Host
    }
}