

# function mksymlink {
#     ln -s /path/to/original /path/to/symlink
# }


# New-Alias -Name mksymdir -Value mksymlink -Option AllScope -Description "make symlink"

# Make sure paths are absolute
function mksymlink ($link, $symlink) {
    # todo
}
function mksymdir ($link, $symlink) {
    # todo
}



function Flush-DNS {
    sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
}


function Open-Hosts() {
    # todo
}


# npm-cache
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Roaming\npm-cache
#   %AppData%\npm-cache
function Npm-Clean-Cache() {
    # todo
}

# yarn-cache
# Default location (Windows):
#   C:\Users\matt.sheehan\AppData\Local\Yarn\Cache\v4
#   %AppData%\Local\Yarn\Cache\v4
function Yarn-Clean-Cache() {
    # todo
}


function Open-Admin-Shell() {
    # todo
}

