#!/bin/bash

set -x

export GUNBOT_VERSION="$1"

function get_download_version {
    python3 -c "import os ; print( os.environ['GUNBOT_VERSION'].replace('v','').replace('.','') )" 
}

function get_latest_version {
    curl -s https://api.github.com/repos/GuntharDeNiro/BTCT/releases/latest | jq -r .tag_name
}

URL="https://github.com/GuntharDeNiro/BTCT/releases/download/$(get_latest_version)/gunthy_linux.zip"
echo "Downloading: $URL"

wget $URL
unzip gunthy_linux.zip
chmod +x gunthy_linux/gunthy-linux