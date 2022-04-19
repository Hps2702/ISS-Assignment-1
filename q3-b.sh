#!/bin/bash
read -p "enter the file name:" file
temp=`wc -l <$file`
echo "The number of lines in the file is $temp"
