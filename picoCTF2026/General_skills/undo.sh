# #!/bin/bash

#$1 should be given as an argument to the script
# it corresponds to the netcat port number

(
  echo "base64 -d"
  echo "rev"
  echo "tr '-' '_'"
  echo "tr '()' '{}'"
  echo "tr 'a-zA-Z' 'n-za-mN-ZA-M'"
) | nc foggy-cliff.picoctf.net $1