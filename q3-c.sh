#!/bin/bash
read -p "enter the file name:" file
temp=`wc -w <$file`
echo "The number of words in the file is $temp"