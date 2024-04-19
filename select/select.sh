#!/bin/bash

: '
    select statment provides us with a dropdown menu to select from
'

PS3="Select your country: "

select country in "India" "United states" "France" "Russia" "Japan" QUIT
do
        #echo" your country is $country"
        #echo "reply is $REPLY"
        case $REPLY in
        1)
                echo "Your'e from $country and you speak Many local and foreign languages"
                ;;
        2)
                echo "Your'e from $country and you speak English"
                ;;
        3)
                echo "Your'e from $country and you speak French"
                ;;
        4)
                echo "Your'e from $country and you speak Russian"
                ;;
        5)
                echo "Your'e from $country and you speak Japanese"
                ;;

        6)
                echo " Quitting fromt the menu"
                exit
                ;;

        *)
                echo "Invalid"
                ;;

        esac


done