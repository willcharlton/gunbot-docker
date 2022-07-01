#!/bin/bash

export GUNBOT_VERSION="$1"

function get_download_version {
    python3 -c "import os ; print( os.environ['GUNBOT_VERSION'].replace('v','').replace('.','') )" 
}

URL="https://github.com/GuntharDeNiro/BTCT/releases/download/${GUNBOT_VERSION}/gunthy_linux.zip"
echo "Downloading: $URL"

wget $URL
unzip gunthy_linux.zip
chmod +x gunthy_linux/gunthy-linux