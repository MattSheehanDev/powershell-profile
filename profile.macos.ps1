

function Flush-DNS {
    sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
}

function mksymlink {
    ln -s /path/to/original /path/to/symlink
}


New-Alias -Name mksymdir -Value mksymlink -Option AllScope -Description "make symlink"

