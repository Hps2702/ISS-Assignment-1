#!/bin/bash
read -p "enter the file name:" file
grep -v "^$" $file>>tmp.txt
echo "REMOVED EMPTY LINES"
cat tmp.txt
echo "REMOVED DUPLICATE LINES"
awk '!a[$0]++' tmp.txt
rm tmp.txt