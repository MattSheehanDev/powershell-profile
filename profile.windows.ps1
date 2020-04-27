
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
    Start-Process PowerShell -Verb RunAs -ArgumentList "-noexit -command `"cd `"${path}`" `""
}


#
# Windows specific environment variables
#

# Set yarn cache dir to D: drive so that it doesn't take up to much main drive space.
# https://yarnpkg.com/lang/en/docs/cli/cache/#toc-change-the-cache-path-for-yarn
$Env:YARN_CACHE_FOLDER = "D:\Yarn\Cache"

# Set npm cache dir to D: drive as well
$Env:npm_config_cache = "D:\Npm\npm-cache"

