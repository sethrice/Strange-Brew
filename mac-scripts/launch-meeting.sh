#!/bin/bash

# Launch a meeting from the CLI after the timer you set zero's out. So you aren't late, or way early.
# sleep 300 &&  cd /Applications ; open Google\ Chrome.app "https://zoom.us"

countdown="$1"
url=$2
thisdir=`pwd`


sleep "$countdown"
cd /Applications
eval $(open 'Google Chrome.app' "$URL")
cd "$thisdir"