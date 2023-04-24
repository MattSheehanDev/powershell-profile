
# colortool: https://github.com/Microsoft/Console/tree/master/tools/ColorTool


# Make sure paths are absolute
function mksymlink ($link, $symlink) {
    & cmd /c mklink $symlink $link
}
function mksymdir ($link, $symlink) {
    & cmd /c mklink /d $symlink $link
}


# Flush DNS (flush is not an approved ps verb)
function  Clear-DNS {
    & ipconfig /flushdns
}


# Open hosts file
function Open-Hosts () {
    # notepad "%SystemRoot%\system32\drivers\etc\hosts"
    notepad "C:\Windows\System32\drivers\etc\hosts"
}



# Open admin powershell in the current directory
function Open-Admin-Shell() {
    $path = (cwd).Path
    Start-Process pwsh -Verb RunAs -ArgumentList "-noexit -command `"cd `"${path}`" `""
}



if (Test-Path "C:\PortQryV2") {
    New-Alias -Name portquery -Value "C:\PortQryV2\PortQry.exe" -Force -Option AllScope -Description "PortQry.exe"
}


#
# Windows specific environment variables
#

# # Set yarn cache dir to known drive so that it doesn't take up to much main drive space.
# # https://yarnpkg.com/lang/en/docs/cli/cache/#toc-change-the-cache-path-for-yarn
# $Env:YARN_CACHE_FOLDER = "E:\AppCache\Yarn"

# Set npm cache dir to drive as well
$Env:npm_config_cache = "C:\AppCache\npm-cache"


#
# Winget
#
# Add tab completion based off https://github.com/microsoft/winget-cli/blob/master/doc/Completion.md
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
        [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
        $Local:word = $wordToComplete.Replace('"', '""')
        $Local:ast = $commandAst.ToString().Replace('"', '""')
        winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}
