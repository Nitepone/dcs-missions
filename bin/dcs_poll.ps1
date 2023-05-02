param (
    [string]$path
)

if (-not $path) {
    Write-Output "Usage: dcs_poll.ps1 <path>"
    Throw "Missing args"
}

cd "$path"
while ($true) {
        git pull
        Start-Sleep -Seconds 30
}