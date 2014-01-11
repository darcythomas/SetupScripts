#!/usr/bin/env bash
   
Red          ='\e[0;31'    
NC           ='\e[0m' # No Color

echo -e "${red}place to contain the mess${NC}"
mkdir installSetup
cd installSetup

echo -e "${red}get files${NC}"
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/colorCodes.sh


echo -e "${red}run scripts${NC}"
./colorCodes.sh
./apt-getInstall.sh




echo -e "${red}clean up${NC}"
cd ..
rm -r installSetup
