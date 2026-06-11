#!/bin/bash

nc lonely-island.picoctf.net $1 << EOF
64-bit
dynamic
not stripped
0x15
0x90
yes
fgets
win
buffer overflow
0x7B
nx
ROP
0x401176
EOF