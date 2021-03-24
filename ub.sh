sudo apt update < "/dev/null"
sudo apt install xfce4 xfce4-goodies < "/dev/null"
sudo apt install tightvncserver < "/dev/null"
sudo apt install xfonts-base < "/dev/null"
sudo apt install autocutsel < "/dev/null"
mv /root/.vnc/xstartup ~/.vnc/xstartup.bak < "/dev/null"
cd /root/.vnc/
cat <<EOF >>xstartup
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
autocutsel -fork
preved
EOF
sudo apt install firefox
sudo chmod +x ~/.vnc/xstartup
vncserver
