#!/bin/bash

: ' 
  
  By default IFS varibales are used as demiliter for word splitting

  to see variables execute ${IFS@Q}

  We can also add our own IFS variables

  Anything entered without " " will have the delimeters to work and split them.
  '

echo "Check the IFS variables"
echo ${IFS@Q}
#output will be similar to $' \t\n'

echo "lets change the IFS variables"
IFS=$'\n'
echo ${IFS@Q}
#output will be similar to $'\n'

echo "lets change the IFS variables to default "
IFS=$'\n\t'
echo ${IFS@Q}

dirs= "d1 d2 d3"

mkdir -p $dirs

echo "lets see the files in the directory"
ls -l $dirs
# output will be similar to d1 d2 d3 folders created.

#let see what happens if we use the " " double Quotes

mkdir -p "$dirs"

echo " here the contents of the varible $dirs is consider as single word"

echo" folders cleanup"
 rm -rf d{1..3}
 

