#!/bin/bash
#sudo mkdir -p /var/logs/app/january/{01..31}

echo " Creating the jan feb march folders with days in that month"
sudo mkdir -p /var/logs/app/{january/{01..31},february/{01..28},march/{01..31}}
echo " "

echo " Creating the log.txt file in each folder"
sudo touch  /var/logs/app/{january/{01..31}/log.txt,february/{01..28}/log.txt,march/{01..31}/log.txt}
echo " "

echo " Creating the log[1 to 10].txt file in each day of month folder"
sudo touch  /var/logs/app/{january/{01..31}/log{1..100..10}.txt,february/{01..28}/log{1..10}.txt,march/{01..31}/log{1..10}.txt}