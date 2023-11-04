#! /bin/bash
echo "i failed to do this part...i've done my best, the next is what i've done(but failed"

echo "
cat u.item | awk '{print "0 0"}' > tu.item
cat u.user | awk  -F\| '$2>=20 && $2<=29 && $4=="programmer" {print $1}' > temp.txt
num=$(cat temp.txt | wc -l)
dl=$(cat u.data | wc -l)


j=1

while [ $j -le $num ]
do
	uid=$( cat temp.txt | awk -v idx=$j 'NR==idx {print}')

	cat u.data | awk -v u_id=$uid '$1==u_id {print $2 , $3}' > rating.txt	
	line=$( cat rating.txt | wc -l )
	i=1
	while [ $i -le $line ]
	do
		mid=$( cat rating.txt | awk -v lineno=$i 'NR==lineno {print $1}' )
		rate=$( cat rating.txt | awk -v lineno=$i 'NR==lineno {print $2}' )
		cat tu.item | awk -v lineno=$mid -v _rate=$rate 'NR==lineno {$1+=_rate} NR==lieno {$2++} {print}' > tu.item 

		let i=i+1
	done

	let j=j+1
done
"
