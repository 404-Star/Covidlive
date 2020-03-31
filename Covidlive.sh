#!/bin/bash
echo [+] Loading...
wget -q -O covid.txt https://www.worldometers.info/coronavirus/ 
sed -i 's/<[^>]*>//g' covid.txt
sed -n '12{p;q}' covid.txt
