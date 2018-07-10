#!/bin/sh

cat index.html_part1 > index.html
pandoc -f markdown -t html index.md >> index.html
cat index.html_part3 >> index.html
