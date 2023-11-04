#! /bin/bash

read -p "Enter movie id(1~~1682) : " movie_id

cat u.item | awk -v num=$movie_id 'NR==num {print}'