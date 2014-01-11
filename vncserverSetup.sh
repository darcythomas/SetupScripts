echo setup vnc server

vncserver 

vncserver -kill :1

cp ./xstartup ~/.vnc/xstartup 
