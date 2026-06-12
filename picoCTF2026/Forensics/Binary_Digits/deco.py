#!/usr/bin/env python3
import sys

with open("digits.bin", "r") as file:
	binary_data = file.read().strip()

# Decode bits into bytes
bytes_list = [int(binary_data[i:i+8], 2) for i in range(0, len(binary_data), 8)]

# # Print information for your CTF challenge
# print("Length of bytes:", len(bytes_list))
# print("First 20 bytes hex:", [hex(b) for b in bytes_list[:20]])
# print("Last 10 bytes hex:", [hex(b) for b in bytes_list[-10:]])

# create an empty image recovered_flag.jpg and write the bytes in it
with open("recovered_flag.jpg", "wb") as f:
    f.write(bytes(bytes_list))
print("Saved decoded file to 'recovered_flag.jpg'")