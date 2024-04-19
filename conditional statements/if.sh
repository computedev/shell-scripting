!#/bin/bash
echo "Welcome to Learning car driving central"
echo " "


read -p "Please enter your age to see your eligibility: " age
echo " "

if [ $age -gt 18 ]
then
    echo "You are eligible to drive"
elif [$age -eq 18]
then
    echo "You are eligible to get your learners license"  
else [ $age -lt 18 ]
    echo "You are not eligible to drive please try when your'e 18"
fi
