#!/bin/bash

git config user.name "root"
git config user.email "root@picoctf"
touch flag.txt
git add flag.txt
git commit -m "Adding flag.txt"
git push
