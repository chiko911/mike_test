#!/bin/bash
sudo apt update -y
sudo apt install xfce4 xfce4-goodies -y 
sudo apt install tightvncserver -y
sudo apt install xfonts-base -y
sudo apt install autocutsel -y
vncserver
vncserver -kill :1
mv /root/.vnc/xstartup ~/.vnc/xstartup.bak
cd /root/.vnc/
cat <<EOF >>xstartup
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
autocutsel -fork
preved
EOF
sudo apt install firefox -y
sudo chmod +x ~/.vnc/xstartup
vncserver
