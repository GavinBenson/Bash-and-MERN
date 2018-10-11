#!/bin/bash

#Inclusive

clear
for count in {0..100}; do
echo The count is $count
let count=count+1
done

echo
echo

wCount=0
while [ $wCount -lt 100 ]; do
echo $wCount
let wCount=wCount+1
done

echo
echo

uCount=0

until [ $uCount -gt 100 ]; do
echo $uCount
let uCount=uCount+1
done
