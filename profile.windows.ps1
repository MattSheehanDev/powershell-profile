
# colortool: https://github.com/Microsoft/Console/tree/master/tools/ColorTool


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

