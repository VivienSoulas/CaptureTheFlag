#!/bin/bash

grep -r --color=always pico big-zip-files | sed 's/.*pico/pico/'