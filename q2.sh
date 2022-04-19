#!/bin/bash
read -p "enter the file name:" file
grep -v "^$" $file>quote.txt
cat quote.txt
while read -r line
do
awk -F~ '{print $2 " once said,\""$1"\""}'
done<quote.txt
rm quote.txt
