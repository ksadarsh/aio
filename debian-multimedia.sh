#!/bin/bash
set -e
sudo sh -c 'echo "deb http://ro.alwayshere.net/ stable main" >> /etc/apt/sources.list
sudo sh -c 'echo "deb-src http://ro.alwayshere.net/ stable main" >> /etc/apt/sources.list
wget http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2012.05.05_all.deb -O deb-multimedia-keyring.deb
sudo dpkg -i multimedia-keyring_all.deb
sudo apt-get update
sudo apt-get install libfaad2 libmp4v2-1 libfaac0 alsamixergui twolame blades libmp3lame0 libdvdnav4 libdvdread4 libdvdcss2 w64codecs ffmpeg
