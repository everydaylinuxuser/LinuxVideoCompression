# README

## Introduction

This is just a small script to enable you to bulk compress videos to a smaller file size.

It uses an appImage of FFMPEG as this can be used even on an atomic system such as Fedora Silverblue.

## Installation instructions

1. Clone the repo
2. Make sure the install.sh script is executable (chmod +x install.sh)
3. Run ./install.sh

## Usage instructions

Run the following command.

./compressvideos.sh /path/to/folder

Replace /path/to/folder with the folder containing the videos you want to compress.

(Example syntax: ./compressvideos.sh ~/Videos)

A new compressed folder will be generated within the target folder with the compressed videos inside.

