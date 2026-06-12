#!/bin/bash

grep "user_pw" level1.py | grep -o '[0-9]\+' | python3 level1.py