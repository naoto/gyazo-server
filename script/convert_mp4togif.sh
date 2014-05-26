#!/bin/sh
set -e

HASH=$1

ffmpeg -i /tmp/${HASH}.mp4 -r 10 /tmp/${HASH}_%04d.png
gm convert -loop 0 -delay 20 /tmp/${HASH}_*.png public/data/${HASH}.gif
rm -f /tmp/${HASH}*
