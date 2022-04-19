#!/bin/bash
read -p "enter the file name:" file
temp=`wc -c <$file `
echo "The size of file is: $temp"
