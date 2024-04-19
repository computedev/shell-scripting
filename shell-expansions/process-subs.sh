#!/bin/bash

: ' 
    To reference the output of a command as a file ,
    Which can be used in subsequent commands execution
    '

grep -W "root" <(cat /etc/passwd)

echo "executing the command as a file"

<(ls)

echo "The result will be saved to file shown above"

echo " " 

echo "Executing the result of the file in echo command"
echo <(ls)

echo " cating the <(ls) will give the result saved in that file"

cat <(ls)