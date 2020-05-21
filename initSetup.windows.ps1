# Setup for PowerShell 7 on Windows 10

cmd /c mklink "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" "$PSScriptRoot\Microsoft.PowerShell_profile.ps1"
cmd /c mklink "$HOME\Documents\PowerShell\alias.ps1" "$PSScriptRoot\alias.ps1"
cmd /c mklink "$HOME\Documents\PowerShell\azure.ps1" "$PSScriptRoot\azure.ps1"
cmd /c mklink "$HOME\Documents\PowerShell\profile.windows.ps1" "$PSScriptRoot\profile.windows.ps1"

