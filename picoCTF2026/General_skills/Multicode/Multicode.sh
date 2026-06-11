#!/bin/bash

cat - | base64 -d | xxd -r -p | python3 -c "import sys, urllib.parse; print(urllib.parse.unquote(sys.stdin.read()))" | tr 'A-Za-z' 'N-ZA-Mn-za-m'