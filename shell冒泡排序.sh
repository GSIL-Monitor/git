#!/bin/bash
array_name=(1 3 2 4 6 7 4 11 5 10)
for((i=0;i<${#array_name[@]};i++))
do
  for((j=i+1;j<${#array_name[@]};j++))
  do
    if [ ${array_name[i]} -gt ${array_name[j]} ]
	then
        temp=${array_name[i]}
        array_name[i]=${array_name[j]}
        array_name[j]=$temp
    fi
  done
done
echo ${array_name[@]}