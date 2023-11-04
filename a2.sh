#! /bin/bash

read -p "Do you want to get the data of 'action' genre movies from 'u.item'? (y/n) : " ans

if [ "$ans" = "y" ]
then
	cat u.item | awk -F\| '$7=='1' {print $1, $2}' > temp.txt

	cat temp.txt | awk 'NR <= 10 {print}' 
else
	echo "OK...BYE"

fi

