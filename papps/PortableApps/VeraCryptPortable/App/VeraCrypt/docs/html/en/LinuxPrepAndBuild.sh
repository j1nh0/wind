#!/bin/bash

sudo apt update
sudo apt install -y build-essential yasm pkg-config libwxgtk3.0-gtk3-dev
sudo apt install -y libfuse-dev git
git clone https://github.com/veracrypt/VeraCrypt.git
cd ~/VeraCrypt/src
