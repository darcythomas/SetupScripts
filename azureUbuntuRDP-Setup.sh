#!/usr/bin/env bash
   

# colorize stdin according to parameter passed (GREEN, CYAN, BLUE, YELLOW)
colorize(){
    NORMAL="\033[m"	
	BLACK='\033[0;30'     
	BLUE='\033[0;34'    
	GREEN='\033[0;32'    
	CYAN='\033[0;36'    
	RED='\033[0;31'    
	PURPLE='\033[0;35'    
	BROWNORANGE='\033[0;33'    
	LIGHTGRAY='\033[0;37'
	DARKGRAY='\033[1;30'    
	LIGHTBLUE='\033[1;34'
	LIGHTGREEN='\033[1;32'
	LIGHTCYAN='\033[1;36'
	LIGHTRED='\033[1;31'
	LIGHTPURPLE='\033[1;35'
	YELLOW='\033[1;33'
	WHITE='\033[1;37'

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



echo place to contain the mess | colorize RED
mkdir installSetup
cd installSetup

echo get files | colorize RED
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/apt-getInstall.sh 
wget --no-check-certificate https://raw2.github.com/darcythomas/SetupScripts/master/colorCodes.sh


echo Permission scripts | colorize RED
chmod a+x ./apt-getInstall.sh

echo run scripts | colorize RED
./apt-getInstall.sh



echo clean up | colorize RED
cd ..
rm -r installSetup
rm $0