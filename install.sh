#!/bin/bash
chmod +x compressvideos.sh
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-i686-static.tar.xz
tar -xvf ffmpeg-release-i686-static.tar.xz
rm *.xz*
cd ffmpeg-*-static
chmod +x ffmpeg
