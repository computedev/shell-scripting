#!/bin/bash

echo "Please enter your age to see your eligibility: "
read age

if [ $age -lt 18 ] && [ $age -gt 0 ]
then
    echo "You are a minor "
elif [ $age -ge 18 ] && [ $age -lt 60 ]
then
    echo "You are an adult and eligible for the driving license"
elif [ $age -gt 60 ]
then
    echo "We need a medical clearance certificate to get you a license"
else
    echo "Please enter a valid age"
fi