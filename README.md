tv-network-icon-css
=============

CSS for TV networks. See the
[demo](http://bradcornford.github.io/tv-network-icon-css/).

Usage
-----

For using the TV network inline with text add the classes `tv-network-icon` and
`tv-network-icon-xx` (where `xx` is the code for the network, i.e. amc) to an empty `<span>`.
If you want to have a smaller version of the network icon `tv-network-icon-sm`. Example:

    <span class="tv-network-icon tv-network-icon-amc"></span>
    <span class="tv-network-icon tv-network-icon-sm tv-network-icon-amc"></span>
    <span class="tv-network-icon tv-network-icon-md tv-network-icon-amc"></span>


Development
-----------

Run the `npm install` to install the dependencies after cloning the project and
you'll be able to:

To watch for changes and live reload if served

    $ grunt

To build `*.less` files

    $ grunt build

To serve it on `localhost:8000`

    $ grunt connect

