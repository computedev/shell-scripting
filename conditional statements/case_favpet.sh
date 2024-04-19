#!/bin/bash
read -p "Enter the your favourite pet:" pet
# NOte always try to use variable in the case statement with double quotes to avoid word splitting 
# $pet = D O G may cause word splitting
# "$pet" = D O G will not cause word splitting
case "$pet" in
"dog"| "D O G" | "puppy" | "PUPPY" | "puppy dog" | "PUPPY DOG" | "Puppy Dog")
    echo "fav pet is dog"
    ;;
"cat" | "CAT" | "Kitty")
    echo "fav pet is cat"
    ;;
fish | "Fish" | "African Turtle")
    echo "fav pet $pet is Aquatic animal"
    ;;
*)
    echo "fav pet is $pet is not present in the list" 
    ;;
esac
