#!/usr/bin/env bash

echo place to contain the mess
mkdir installSetup
cd installSetup


echo get files
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 


echo run scripts
bash apt-getInstall.sh




echo clean up
cd ..
rm -r installSetup
