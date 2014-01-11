#!/usr/bin/env bash
   
Red          ='\033[0;31'    
NC           ='\033[0m' # No Color




echo -e "${red}place to contain the mess${NC}"
mkdir installSetup
cd installSetup

echo -e "${red}get files${NC}"
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/colorCodes.sh


echo -e "${red}run scripts${NC}"
./colorCodes.sh
./apt-getInstall.sh




#echo hi | colorize GREEN
echo -e "${red}clean up${NC}"
cd ..
rm -r installSetup
rm $0