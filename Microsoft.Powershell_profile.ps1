# Powershell profile
#
# Good primer on where user and sytem profiles can exit,
# https://docs.microsoft.com/en-us/powershell/scripting/components/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6
#
#



#
# Helper functions
#

function Get-OS-Architecture {
    # win32NT, Unix
    [ENVIRONMENT]::OSVersion.Platform
}

function version {
    $PSVersionTable
}



. "$PSScriptRoot/alias.ps1"
. "$PSScriptRoot/azure.ps1"


if ($IsWindows) {
    . "$PSScriptRoot\profile.windows.ps1"
}
elseif ($IsMacOS) {
    . "$PSScriptRoot/profile.macos.ps1"
}


# Secrets
if (Test-Path "$PSScriptRoot/profile.secrets.ps1") {
    . "$PSScriptRoot/profile.secrets.ps1"
}


# Import Modules
if (Test-Path "~/.powershell.d/posh-git/src/posh-git.psd1") {
    Import-Module ~/.powershell.d/posh-git/src/posh-git.psd1
}
if (Test-Path "~/.powershell.d/ZLocation/ZLocation/ZLocation.psd1") {
    Import-Module ~/.powershell.d/ZLocation/ZLocation/ZLocation.psd1
}
# Install-Package SemanticVersioning -Version 1.2.2
# Import-Module ~/.powershell.d/ps-nvm/nvm.psd1



# Set the shell Prompt
function Prompt {

    Write-Host $([Environment]::UserName) -NoNewLine -ForegroundColor Green

    $cwd = (Get-Location).Path
    # $cwd = $cwd -replace "$($HOME)", "~"
    $cwd = $cwd.Replace($HOME, "~")

    Write-Host (" " + "$cwd") -NoNewline -ForegroundColor Yellow

    if ((Get-Module posh-git)) {
        $gitStatus = Get-GitStatus
        if ($gitStatus) {
            Write-Host " ($($gitStatus.Branch))" -NoNewline -ForegroundColor Cyan
    
            if ($gitStatus.Working.Length -gt 0) {
                Write-Host "*" -NoNewline -ForegroundColor Red
            }
        }
    
    }

    Write-Host " $" -NoNewline -ForegroundColor Yellow

    return " "
}




# Shared Functions

# npm-cache
# Default location (macOS):
#   ~/.npm
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Roaming\npm-cache
#   %AppData%\npm-cache
function Clear-Npm-Cache() {
    npm cache clean --force
}

# yarn-cache
# Default location (macOS):
#   ~/Library/Caches/Yarn
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Local\Yarn\Cache
#   %AppData%\Local\Yarn\Cache
function Clear-Yarn-Cache() {
    yarn cache clean
}