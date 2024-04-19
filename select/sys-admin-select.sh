#!/bin/bash

# System Administration Project!

PS3=" Your choice of the menu:"

select item in "Add user" "List all process" "Kill Process" "Install a programme" "Exit"
do
    if [[ $REPLY -eq 1 ]];then
        read -p "Enter the user name: " username
        output="$(grep -w $username /etc/passwd)"
        if [[ -n $output ]];then
            echo "The user $username is already exit"
        else
            sudo useradd -m -s /bin/bash "$username"
            if [[ $? -eq 0 ]];then
            echo "The user $username is created"
            tail -n 1 /etc/passwd
            else
            echo "The user $username is not created"
            fi
        fi

    elif [[ $REPLY -eq 2 ]];then
        echo "List all process"
        sleep 2
        ps -ef
    elif [[ $REPLY -eq 3 ]];then
       read -p "Enter the process id to kill: " process
       pkill $process
    elif [[ $REPLY -eq 4 ]];then
        read -p "Enter the programme name: " programme
        sudo apt update -y && apt install $programme -y
    elif [[ $REPLY -eq 5 ]];then
        echo "Quitting"
        exit
    else
        echo "invalid Menu Selection"
  fi
done