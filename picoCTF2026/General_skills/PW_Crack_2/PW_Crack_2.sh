#!/bin/bash

grep "user_pw ==" level2.py | grep -o '0x[0-9a-fA-F]\+' | tr -d '0x' | xxd -r -p | python3 level2.py