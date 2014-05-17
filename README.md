# RSS Reader

## Dependencies

You will need to install [tup][tup] and [WebKitGTK+][webkitgtk] (specifically, WebKit2GTK+-3.0).

On Fedora 20:

    sudo yum install webkitgtk3-devel fuse-devel

    # Install Tup
    cd ~/workspace # or whatever
    git clone git://github.com/gittup/tup.git
    cd tup
    ./bootstrap.sh
    sudo ln -s $PWD/tup /usr/local/bin/tup

On Ubuntu 14.04:

    sudo apt-get install libwebkitgtk3-dev

    sudo apt-add-repository 'deb http://ppa.launchpad.net/anatol/tup/ubuntu precise main'
    sudo apt-get update
    sudo apt-get install tup

## Get Source

    cd ~/workspace # or whatever
    git clone https://github.com/brendanlong/rss-reader.git
    cd rss-reader

## Build

    tup init
    tup upd

For development, tup can run in the background and rebuild whenever a file changes:

    tup monitor -a
    # stop with: tup stop

[tup]: http://gittup.org/tup/
[webkitgtk]: http://webkitgtk.org/
