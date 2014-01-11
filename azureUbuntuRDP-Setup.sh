#!/usr/bin/env bash
   
Red          ='\e[0;31'    
NC           ='\e[0m' # No Color

# colorize stdin according to parameter passed (GREEN, CYAN, BLUE, YELLOW)
colorize(){
    GREEN="\033[0;32m"
    CYAN="\033[0;36m"
    GRAY="\033[0;37m"
    BLUE="\033[0;34m"
    YELLOW="\033[0;33m"
    NORMAL="\033[m"
    color=\$${1:-NORMAL}
    # activate color passed as argument
    echo -ne "`eval echo ${color}`"
    # read stdin (pipe) and print from it:
    cat
    # Note: if instead of reading from the pipe, you wanted to print
    # the additional parameters of the function, you could do:
    # shift; echo $*
    # back to normal (no color)
    echo -ne "${NORMAL}"
}
echo hi | colorize GREEN


echo -e "${red}place to contain the mess${NC}"
mkdir installSetup
cd installSetup

echo -e "${red}get files${NC}"
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/colorCodes.sh


echo -e "${red}run scripts${NC}"
./colorCodes.sh
./apt-getInstall.sh




echo hi | colorize GREEN
echo -e "${red}clean up${NC}"
cd ..
rm -r installSetup
rm $0