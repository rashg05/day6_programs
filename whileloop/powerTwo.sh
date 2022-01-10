#!/bin/bash -x

read -p "Enter the power you want to calculate: " power

num=1
if [ $power == 0 ]
then
	echo "2^$power =1"
else
	i=1
	while [ $i < $power ]
	do
		num=$(($num*2))
		((++i))
		if [ $num == 256 ]
		then
			echo "2^$(($i-1))=$num"
			break;
		fi
	done

	if [ $num < 256 ]
	then
	echo "2^$power=$num"
	fi
fi
