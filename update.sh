#!/bin/bash

ls | grep -v update.sh | xargs -I {} rm -rf {}
cp ../../README.md .
cp ../../*.aux .
cp ../../*.lua .
cp -r ../../data .
cp -r ../../figures .
cp ../../*.js .
cp ../../latexmkrc .
cp ../../main.tex .
cp ../../package.json .
cp ../../sysu_logo.jpg .
cp ../../sysusetup.tex .
cp ../../sysuthesis-author-year.bst .
cp ../../sysuthesis-numeric.bst .
cp ../../sysuthesis.cls .
cp ../../demo-v1*pdf .
