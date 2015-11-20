#!/bin/bash

# ~ann/app27/haml/hamldemo.bash

# This script should demo the haml shell command which I use to create
# an HTML file from a HAML file.

.  ~ann/app27/app27env.bash
cd ~ann/app27/haml/
$GEM_HOME/bin/haml -eq demo10.haml ~ann/app27/demo10.html

exit
