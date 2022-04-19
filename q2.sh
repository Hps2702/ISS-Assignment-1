#!/bin/bash
read -p "enter the file name:" file
grep -v "^$" $file>tmp.txt
while read -r line
do
awk -F~ '{print $2 " once said,\""$1"\""}'>>speech.txt
done<tmp.txt
rm tmp.txt
