#! /bin/bash

read -p "Do you want to get the data about users from 'u.users'? (y/n) " ans
if [ "$ans" = "y" ]
then
		cat u.user | awk 'NR<=10{print}' | sed 's/^/user /' | sed 's/|/ is /1' | sed 's/M/male/' | sed 's/F/female/' | sed 's/|/ years old /' | sed 's/|/ /' | sed 's/|.*//'

else
	echo "OK...BYE"

fi

