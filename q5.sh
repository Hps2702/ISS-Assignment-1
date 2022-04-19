#!/bin/bash
read -p "enter the string:" str
str1=$(echo $str | rev)
echo $str1
ch=$(echo "$str1"|tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo $ch
len=${#str}
for((i=$len/2-1;i>=0;i--))
do
revstr=$revstr${str:$i:1}
done
for((i=$len/2;i<$len;i++))
do
revstr=$revstr${str:$i:1}
done
echo $revstr