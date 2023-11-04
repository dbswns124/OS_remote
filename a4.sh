#! /bin/bash

read -p "Do you want to delete the 'IMDb URL from 'u.item'?: (y/n) " ans
if [ "$ans" = "y" ]
then
	cat u.item | sed 's/[^|]*imdb[^|]*|//g' > temp.txt
	cat temp.txt | awk 'NR<=10 {print}'
else
	echo "OK...BYE"

fi


