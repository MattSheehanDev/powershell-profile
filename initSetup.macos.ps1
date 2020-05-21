# Setup for PowerShell 7 on macOS

New-Item -Path "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Value "$PSScriptRoot/Microsoft.PowerShell_profile.ps1"
New-Item -Path "$HOME/.config/powershell/alias.ps1" -ItemType SymbolicLink -Value "$PSScriptRoot/alias.ps1"
New-Item -Path "$HOME/.config/powershell/azure.ps1" -ItemType SymbolicLink -Value "$PSScriptRoot/azure.ps1"
New-Item -Path "$HOME/.config/powershell/profile.macos.ps1" -ItemType SymbolicLink -Value "$PSScriptRoot/profile.macos.ps1"

