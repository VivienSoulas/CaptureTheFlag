#!/usr/bin/env python3

import subprocess
import hashlib

checker_program = ["python3", "level5.py"]

# reads the unique valid hash key
correct_hash = open("level5.hash.bin", "rb").read()

# Check each entry of the dictionary
with open("dictionary.txt", "r") as file:
	for line in file:
		pw = line.strip()
		
		# reverse engineer the level5.py hashing method
		pw_hash = hashlib.md5(pw.encode()).digest()
		
		if pw_hash == correct_hash:
			print(f"Password found: {pw}")

			result = subprocess.run(
				checker_program,
				input=pw,
				text=True,
				capture_output=True,
			)
			output_lines = result.stdout.splitlines()
			print(f"{output_lines[1]}")
			break