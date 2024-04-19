#!/bin/bash

# String list 
: ' 
    syntax
    prefix{value1,value2,valuen}suffix 
    echo dev-{log,monitor,file}.txt

    nested list
    prefix{value1,value2,valuen}{value1,value2,valuen}suffix

    echo dev-{log,monitor,file-{1,2,3}}.txt
    echo dev-{log,monitor,file-{1..3}}.txt
    dev-log.txt dev-monitor.txt dev-file-1.txt dev-file-2.txt dev-file-3.txt
    
    echo dev-{log,monitor,file}{1..3}.txt
    dev-log1.txt dev-log2.txt dev-log3.txt dev-monitor1.txt dev-monitor2.txt dev-monitor3.txt dev-file1.txt dev-file2.txt dev-file3.txt

    '


echo dev-{log,monitor,file}.txt
#echo dev-{log,monitor,file-{1,2,3}}.txt
#echo dev-{log,monitor,file-{1..10}}.txt
#echo dev-{log,monitor,file}{1..3}.txt
echo ' '
sleep 2
echo "creating the file using the brace-expansion"

touch dev-{log,monitor,file}.txt
sleep 1
echo " "

echo "checking the file created using the brace-expansion"
ls -l | grep dev
echo " "

echo"deleting the file using the brace-expansion"
rm dev-{log,monitor,file}.txt
echo " "

echo " check if the file is deleted"
ls -l





