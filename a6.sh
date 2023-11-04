#! /bin/bash

cat u.item | awk 'NR>=1673 {print}' | sed 's/-//g' | awk -F\| '$3=substr($3,6,4) substr($3,3,3) substr($3,1,2) {print}' | sed 's/ /| /' |
 sed 's/Jan/01/g' | sed 's/Feb/02/g' | sed 's/Mar/03/g' | sed 's/Apr/04/g' | sed 's/May/05/g' | sed 's/Jun/06/g' |
 sed 's/Jul/07/g' | sed 's/Aug/08/g' | sed 's/Oct/09/g' | sed 's/Sep/10/g' | sed 's/Nov/11/g' | sed 's/Dec/12/g'   
