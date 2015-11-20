#!/bin/bash

# ~/ann/app27/wget_reactzip.bash

# This script should download react-0.14.3.zip
# I found the zip file discussed at this URL:
# https://facebook.github.io/react/docs/getting-started.html

cd ~ann/app27/
rm -f react-0.14.3.zip
wget https://facebook.github.io/react/downloads/react-0.14.3.zip
exit

# After running this script I might do something like this:
# cd ~ann/app27/
# rm -f react-0.14.3 react
# unzip react-0.14.3.zip
# ln -s react-0.14.3 react
# ln -s react/build .
#
# If 
# ls react/build/
# shows me something,
# then I can avoid doing that.



