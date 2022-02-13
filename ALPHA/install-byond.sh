echo Prepairing the system...
sudo dpkg --add-architecture i386
sudo apt update
sudo apt upgrade
sudo apt install python3 wget git unzip make sudo
sudo rm INSTALL.py
echo Installing dependencies...
sudo apt install make git unzip python3 python3-pip lib32z1 lib32ncurses5 libc6-i386 lib32stdc++6
sudo apt autoremove
sudo apt autoclean
echo Installing BYOND...
sudo python3 INSTALL.py 514 1568