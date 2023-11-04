#! /bin/bash

read -p "Please enter the 'user id'(1~943) : " uid

cat u.data | awk -v id=$uid '$1==id {print $2}' > temp.txt

sort -n temp.txt | tr '\n' '| '
echo 



i=1
while [ $i -le 10 ]
do 
	idx=$( sort -n temp.txt | awk -v num=$i 'NR==num {print $1}' )
	cat u.item |  awk -F\| -v num2=$idx 'NR==num2 {print $1,"| " $2 }'
	let i=i+1
done