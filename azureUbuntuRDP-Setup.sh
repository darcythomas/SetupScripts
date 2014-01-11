#!/usr/bin/env bash

# place to contain the mess
mkdir installSetup
cd installSetup


#get files
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 


#run scripts
bash apt-getInstall.sh




#clean up
cd ..
rm -r /installSetup
