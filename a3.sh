#! /bin/bash


read -p "Please enter the movid id(1~~1682) i will print movie id's average rating : " mid
cat u.data | awk -v m_id=$mid -v cnt=0 -v sum=0 '$2==m_id {cnt++} $2==m_id {sum+=$3} END {print sum/cnt}' 