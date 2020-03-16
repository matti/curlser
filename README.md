# curlser

Makes curl to behave like a browser

## install

    git clone https://github.com/matti/curlser
    ln -s $(pwd)/curlser/curlser /usr/local/bin


## usage

Cookies are set and set back:

    $ curlser mysession example.com
    $ curlser mysession example.com

To start a new session:

    $ curlser anothersession example.com
    $ curlser anothersession example.com
