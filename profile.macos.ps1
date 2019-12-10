


# Make sure paths are absolute
function mksymlink ($link, $symlink) {
    ln -s $link $symlink
}
function mksymdir ($link, $symlink) {
    ln -s $link $symlink
}



function Flush-DNS {
    sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
}


function Open-Hosts() {
    # todo
    open -a textEdit "/etc/hosts"
}



