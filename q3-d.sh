#!/bin/bash
read -p "enter the file name:" file
cnt=0
while read line ; do
let cnt++
word=$(wc -w <<< "$line")
echo "Line No: $cnt -Count of words: $word" 
done < $file