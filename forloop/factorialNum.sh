#!/bin/bash -x

read -p "enter the number:= " number;
fact=1;
for((var=$number;var>1;var--))
do
        fact=$(( $fact * $var ))
done
echo $fact;
