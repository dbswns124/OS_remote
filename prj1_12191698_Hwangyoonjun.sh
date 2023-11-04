#! /bin/bash

echo "
-------------------------------------------------------------------------
User name : Hwang yoon jun
student Nymber : 12191698
1. Get the data of the movie identified by a specific
'movie id' from 'u.item'
2. Get the data of action genre movies from 'u.item’
3. Get the average 'rating’ of the movie identified by
specific 'movie id' from 'u.data’
4. Delete the ‘IMDb URL’ from ‘u.item
5. Get the data about users from 'u.user’
6. Modify the format of 'release date' in 'u.item’
7. Get the data of movies rated by a specific 'user id'
from 'u.data'
8. Get the average 'rating' of movies rated by users with
'age' between 20 and 29 and 'occupation' as 'programmer'
9. Exit

-------------------------------------------------------------------------
"
ans=0

while [ $ans -ne 9 ]
do

	echo 
	read -p "Enter your choice [ 1- - 9 ] : " ans
	if [ "$ans" = "9" ]
		then 
			echo "Bye...."
			break;
fi

	echo
	./a$ans.sh


done
