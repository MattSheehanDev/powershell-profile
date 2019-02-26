

function Flush-DNS {
    & ipconfig /flushdns
}


# Make sure paths are absolute
function mksymlink ($link, $symlink) {
    & cmd /c mklink $symlink $link
}
function mksymdir ($link, $symlink) {
    & cmd /c mklink /d $symlink $link
}


# Open hosts file
function Open-Hosts () {
    # notepad "%SystemRoot%\system32\drivers\etc\hosts"
    notepad "C:\Windows\System32\drivers\etc\hosts"
}


# npm-cache
# C:\Users\matt.sheehan\AppData\Roaming\npm-cache

