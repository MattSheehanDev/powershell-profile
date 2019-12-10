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
function Git-Push {
    & git push
    & git status
}
function Git-Reset {
    & git reset $args
}
function Git-Reset-Soft {
    Git-Reset --soft
}
function Git-Reset-Hard {
    Git-Reset --hard
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
New-Alias -Name gc -Value Git-Commit -Force -Option AllScope -Description "git commit"
New-Alias -Name gp -Value Git-Push -Force -Option AllScope -Description "git push"

New-Alias -Name gr -Value Git-Push -Force -Option AllScope -Description "git reset"
New-Alias -Name grs -Value Git-Push -Force -Option AllScope -Description "git reset soft"
New-Alias -Name grh -Value Git-Push -Force -Option AllScope -Description "git reset hard"

New-Alias -Name b -Value Git-Branch -Force -Option AllScope -Description "git branch"
New-Alias -Name b -Value Git-Checkout -Force -Option AllScope -Description "git checkout"

New-Alias -Name dli -Value Docker-ListImages -Force -Option AllScope -Description "docker list images"

New-Alias -Name cwd -Value Get-Location -Option AllScope -Description "current working dir"
New-Alias -Name flushdns -Value Flush-DNS -Option AllScope -Description "flush dns"

New-Alias -Name hosts -Value Open-Hosts -Option AllScope -Description "open hosts file"
New-Alias -Name npmcc -Value Npm-Clean-Cache -Option AllScope -Description "npm clean cache"

New-Alias -Name admin -Value Open-Admin-Shell -Option AllScope -Description "open administrator powershell"

