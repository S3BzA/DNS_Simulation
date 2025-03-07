# Define the base directories
$baseDirs = @("imr", "pri", "sec")
$subDirs = @("etc/bind", "var/cache/bind", "var/lib/bind", "var/log")

# Loop through and create the directories
foreach ($base in $baseDirs) {
    foreach ($sub in $subDirs) {
        $path = "$PSScriptRoot\$base\$sub"
        if (!(Test-Path $path)) {
            New-Item -ItemType Directory -Path $path -Force | Out-Null
        }
    }
}

Write-Host "Directories created successfully."
