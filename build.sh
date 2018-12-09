#!/bin/sh

cat index.html_part1 > index.html
pandoc -f markdown -t html index.md >> index.html
cat index.html_part3 >> index.html

cat mods.html_part1 > mods.html
pandoc -f markdown -t html mods.md >> mods.html
cat index.html_part3 >> mods.html
