#!/bin/bash

: '
  This  below representation of variable will run the 
    command mentioned between backticks ` ` or () then saves them 
    to that resepective variable.
'

user="`who |grep root`"

user="$(who |grep admin*)"

today=$(date)

today ="`date`- Isn't it amazaing"