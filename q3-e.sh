#!/bin/bash
read -p "enter the file name:" file

function wordfrequency() {
  awk '
     BEGIN { FS="[^a-zA-Z]+" } {
         for (i=1; i<=NF; i++) {
             word = $i
             arr[word]++
         }
     }
     END {
         for (w in arr)
         {
             if (arr[w]>1){
              printf("Word: %s - Count of repetition: %d\n",w,arr[w])
              }
              }
     } ' 
}

cat $file | wordfrequency
