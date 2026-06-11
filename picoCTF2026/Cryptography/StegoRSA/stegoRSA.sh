#!/bin/bash

exiftool image.jpg | grep "Comment" | awk -F': ' '{print $2}' | xxd -r -p > private_key.pem
openssl pkeyutl -decrypt -inkey private_key.pem -in flag.enc -out decrypted_flag.txt
cat decrypted_flag.txt