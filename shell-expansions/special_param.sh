#!/bin/bash

# ./special_param.sh 1 2 3 4 a b c d e

echo "##############################################"
echo " In this we will see how positonal parameter works"
echo "##############################################"
echo" The  parameter \${0} is name of the file itself $0 "
echo " "
echo " The first parameter is ${1:-no parameter passed}"
echo " "
echo " the second parameter \${2} is ${2:-no parameter passed}"
echo " "
echo " the third parameter \${3} is ${3:-no parameter passed}"
echo " "
echo " the fourth parameter \${4} is ${4:-no parameter passed}"
echo " "
echo " the fifth parameter \${5 }is ${5:-no parameter passed}"
echo " "
echo " the eight paramerer \${8}is ${8:-no parameter passed}"
echo " "
echo "The parameter \$- is the options passed to the script ${-:-no options passed}"

echo "##############################################"
echo "##############################################"
echo "In this we will see some of the special parameters..."
echo " "
echo "The parameter \$0 is name of the script $0"
echo " "
echo "The parameter \$@ and \$* are all the parameters passed to the script $*" 
echo " "
echo "The parameter \$# is the number of parameters passed to the script $#"
echo " "
echo "The parameter \$? is the exit status of the last command $?"
echo " "
echo "The parameter \$$ is the process ID of the current script $$"
echo " "
echo "The parameter \$! is the process ID of the last background command $!"
echo " "
echo "The parameter \$- is the options passed to the script ${-:-"no options passed"}"
echo " "

