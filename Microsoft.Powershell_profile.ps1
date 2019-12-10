# Powershell profile
#
# Good primer on where user and sytem profiles can exit,
# https://docs.microsoft.com/en-us/powershell/scripting/components/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6
#
#



#
# Helper functions
#

function OS-Architecture {
    # win32NT, Unix
    [ENVIRONMENT]::OSVersion.Platform
}

function version {
    $PSVersionTable
}



. "$PSScriptRoot/alias.ps1"
. "$PSScriptRoot/azure.ps1"


if ((OS-Architecture) -eq "win32NT") {
    . "$PSScriptRoot/profile.windows.ps1"
}
else {
    . "$PSScriptRoot/profile.macos.ps1"
}


# Write-Output $PSScriptRoot


# Shared Functions

# npm-cache
# Default location (macOS):
#   ~/.npm
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Roaming\npm-cache
#   %AppData%\npm-cache
function Npm-Clean-Cache() {
    npm cache clean --force
}

# yarn-cache
# Default location (macOS):
#   ~/Library/Caches/Yarn
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Local\Yarn\Cache
#   %AppData%\Local\Yarn\Cache
function Yarn-Clean-Cache() {
    yarn cache clean
}