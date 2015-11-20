#!/bin/bash

# ~ann/app27/buildpacks.bash

# This script sets the heroku buildpack for this app.

cd ~ann/app27/
.  ~ann/app27/app27env.bash
heroku buildpacks
heroku buildpacks:clear
heroku buildpacks:add heroku/nodejs

exit
