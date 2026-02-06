function Invoke-MgGraphBatchRequest {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [array]$Requests
    )

    $batchUri = "https://graph.microsoft.com/beta/`$batch"

    $body = @{
        requests = $Requests
    } | ConvertTo-Json -Depth 10

    (Invoke-MgGraphRequest -Method POST -Uri $batchUri -Body $body).responses
}
