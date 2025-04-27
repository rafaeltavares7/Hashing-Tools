#!/bin/bash

hash="$1"
result=$(echo "${#hash}"); echo -e "\n\033[0;32m[+] $result Characters"
num=$(echo "$hash" | grep -o "[0-9]" | wc -l); echo -e "\033[0;32m[+] $num Numbers\033[0m"
lett=$(echo "$hash" | grep -o "[a-zA-Z]" | wc -l); echo -e "\033[0;32m[+] $lett Letters\033[0m"

if [ "$result" == "32" ]; then
  echo -e "\033[0;32m[+] Probably is: MD5, SHAKE128\033[0m"

elif [ "$result" == "40" ]; then
  echo -e "\033[0;32m[+] Probably is: SHA1, RMD160\033[0m"

elif [ "$result" == "56" ]; then
  echo -e "\033[0;32m[+] Probably is: SHA224, SHA3-224, SHA512-224\033[0m"

elif [ "$result" == "64" ]; then
  echo -e "\033[0;32m[+] Probably is: SHA512-256, SHA3-256, SHA256, SM3, SHAKE256, BLAKE2S256\033[0m"

elif [ "$result" == "96" ]; then
  echo -e "\033[0;32m[+] Probably is: SHA384, SHA3-384\033[0m"

elif [ "$result" == "128" ]; then
  echo -e "\033[0;32m[+] Probably is: SHA512, SHA3-512, BLAKE2B512\033[0m"

elif [ "$result" == "131" ]; then
  echo -e "\033[0;32m[+] Probably is: B2\033[0m"
fi

echo -e "\033[0;32m[+] linktr.ee/rafael_tavares.7 | Identify Hash V 1.0\033[0m"
echo -e "\033[0;32m----------------------------------------------------\033[0m\n"
