#!/bin/bash
for i in $(seq 1000 100 2000) ;do
    $1  $i $i $i | sed -n '11p' | awk '{print $4}' >> result.txt
done
echo '\n' >> result.txt 
for i in $(seq 1000 100 2000) ;do
    $2  $i $i $i | sed -n '11p' | awk '{print $4}'  >> result.txt
done
echo '\n'  >> result.txt
for i in $(seq 1000 100 2000) ;do
    $3  $i $i $i | sed -n '11p' | awk '{print $4}'  >> result.txt
done
echo '\n'  >> result.txt
