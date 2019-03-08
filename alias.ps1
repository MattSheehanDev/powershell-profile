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


