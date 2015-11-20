#!/bin/bash

# ~ann/app27/http.bash

cd ~ann/app27/
. ~ann/app27/app27env.bash

~ann/node/bin/node node_modules/http-server/bin/http-server
exit
