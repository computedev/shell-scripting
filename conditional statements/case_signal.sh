#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Run the script with 2 arguments"
    exit 1
fi

case $1 in
1)
    echo "sending SIGHUP signal to $2"
    kill -SIGHUP $2
    ;;
2)
    echo "sending SIGHINT signal to $2"
    kill -SIGINT $2
    ;;
15)
    echo "sending SIGTERM signal to $2"
    kill -SIGTERM $2
    ;;
*)
    echo "Invalid signal number"
    ;;
esac
