sudo apt update
sudo apt install xfce4 xfce4-goodies
sudo apt install tightvncserver
sudo apt install xfonts-base
sudo apt install autocutsel

mv /root/.vnc/xstartup ~/.vnc/xstartup.bak
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
