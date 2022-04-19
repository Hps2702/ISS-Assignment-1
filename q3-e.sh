#!/bin/bash
read -p "enter the file name:" file

function wordfrequency() {
  awk '
     BEGIN { FS="[^a-zA-Z]+" } {
         for (i=1; i<=NF; i++) {
             word = $i
             words[word]++
         }
     }
     END {
         for (w in words)
              printf("Word: %s - Count of repetition: %d\n",w,words[w])
     } ' 
}

cat $file | wordfrequency
