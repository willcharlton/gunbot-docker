GUNBOT_VERSION=$( curl -s https://api.github.com/repos/GuntharDeNiro/BTCT/releases/latest | jq -r .tag_name )
export GUNBOT_VERSION