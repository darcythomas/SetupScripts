echo setup vnc server

vncserver 

sudo vncserver -kill :1

sudo cp ./xstartup ~/.vnc/xstartup 

vncserver -geometry 1440x900 

sudo /etc/init.d/xrdp start
