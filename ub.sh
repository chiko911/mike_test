sudo apt update
sudo apt install xfce4 xfce4-goodies
sudo apt install tightvncserver -y
sudo apt install xfonts-base
sudo apt install autocutsel
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
