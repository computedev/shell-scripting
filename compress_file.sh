#!/bin/bash

echo "Display the contents of the file"
sleep 1

# the file name is passed as an 1st argument to the script
cat $1 

sleep 1

echo "Compressing the file which was passed as an argument\n"

tar "-cjvf $1.tar.gz" $1
sleep 2

echo "check the presence of compress file of the directory \n"
sleep 1
ls -l | grep $1.tar.gz