numbers="1 2 3 5 15 20 25"
for num in $(echo $numbers); do
    if [ $num -lt 10 ]; then
        echo "$num is less than 10"
    elif [[ $num -gt 10 ]]; then
        echo "$num is greater than 10"
    else
        echo "$num is equal to 10"
    fi
done    