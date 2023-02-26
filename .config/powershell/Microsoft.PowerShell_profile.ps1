function Set-FileDate {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline = $true, Mandatory = $true, Position = 0)]
        [string[]]$Path,
        [Parameter(Mandatory = $false, Position = 1)]
        [datetime]$NewDate = (Get-Date),
        [switch]$Force
    )
    Get-Item $Path -Force:$Force | ForEach-Object { $_.LastWriteTime = $NewDate }
}
Set-Alias Touch Set-FileDate -Description "Updates the LastWriteTime for the file(s)"
Set-Alias q exit -Description "Quits the current script"
Set-Alias c clear -Description "Shorter way to clear the screen"
oh-my-posh prompt init pwsh --config https://raw.githubusercontent.com/AllusiveWheat/dotfiles/master/PoshThemes/allusive.json| Invoke-Expression
Import-Module Terminal-Icons
