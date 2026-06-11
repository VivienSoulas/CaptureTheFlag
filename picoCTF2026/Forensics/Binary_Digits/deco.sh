#!/usr/bin/env python3
import sys

# Read the binary string directly from standard input (text.txt)
binary_data = sys.stdin.read().strip()

# Safely check if data was passed
if not binary_data:
    print("Error: No data received from stdin.")
    sys.exit(1)

# Decode bits into bytes
bytes_list = [int(binary_data[i:i+8], 2) for i in range(0, len(binary_data), 8)]

# Print information for your CTF challenge
print("Length of bytes:", len(bytes_list))
print("First 20 bytes hex:", [hex(b) for b in bytes_list[:20]])
print("Last 10 bytes hex:", [hex(b) for b in bytes_list[-10:]])

# OPTIONAL: Save the actual file so you can open the photo
with open("recovered_flag.jpg", "wb") as f:
    f.write(bytes(bytes_list))
print("Saved decoded file to 'recovered_flag.jpg'")