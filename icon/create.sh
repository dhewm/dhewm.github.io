#!/bin/bash

set -ex

svg=$1

size=(16 24 32 48 64 128)

echo Making bitmaps from your svg...

for i in ${size[@]}; do
  inkscape $svg --export-png="favicon-$i.png" -w$i -h$i --without-gui
done

echo Compressing...

## Replace with your favorite (e.g. pngquant)
# optipng -o7 favicon-*.png
pngquant -f --ext .png favicon-*.png --posterize 4 --speed 1

echo Converting to favicon.ico...

convert $(ls -v favicon-*.png) ../favicon.ico

## Clean-up maybe?
# rm favicon-*.png

echo Done
