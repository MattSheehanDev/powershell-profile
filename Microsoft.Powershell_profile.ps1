# Powershell profile
#
# Good primer on where user and sytem profiles can exit,
# https://docs.microsoft.com/en-us/powershell/scripting/components/ise/how-to-use-profiles-in-windows-powershell-ise?view=powershell-6
#
#


# colortool: https://github.com/Microsoft/Console/tree/master/tools/ColorTool


function OS-Architecture {
    # win32NT, Unix
    [ENVIRONMENT]::OSVersion.Platform
}

#
# Aliases
#

# Helper functions
function Git-Add {
    & git add $args
    & git status
}
function Git-Status {
    & git status $args
}
function Git-Branch {
    & git branch $args
}
function Git-Checkout {
    & git checkout $args
}

function Docker-ListImages {
    & docker image ls $args
}



# Aliases
New-Alias -Name gs -Value Git-Status -Force -Option AllScope -Description "git status"
New-Alias -Name ga -Value Git-Add -Force -Option AllScope -Description "git add & git status"
New-Alias -Name b -Value Git-Branch -Force -Option AllScope -Description "git branch"
New-Alias -Name b -Value Git-Checkout -Force -Option AllScope -Description "git checkout"

New-Alias -Name dli -Value Docker-ListImages -Force -Option AllScope -Description "docker list images"

New-Alias -Name cwd -Value Get-Location -Option AllScope -Description "current working dir"
New-Alias -Name flushdns -Value Flush-DNS -Option AllScope -Description "flush dns"
New-Alias -Name hosts -Value Open-Hosts -Option AllScope -Description "open hosts file"




#
# Helper functions
#


function Set-KeyVaultGetPolicy {
    Param(
        [Parameter(Mandatory = $true, Position = 1, HelpMessage = "ARM Login Url")]
        [string]$loginId,

        [Parameter(Mandatory = $true, HelpMessage = "Key Vault Name")]
        [string]$keyvaultName
    )

    Set-AzureRmKeyVaultAccessPolicy -ResourceGroupName "Infrastructure" -VaultName "$keyvaultName" -UserPrincipalName "$loginId" -PermissionsToSecrets get
}



. "$PSScriptRoot/azure.ps1"


if ((OS-Architecture) -eq "win32NT") {
    . "$PSScriptRoot/profile.windows.ps1"
}
else {
    . "$PSScriptRoot/profile.macos.ps1"
}


# Write-Output $PSScriptRoot

