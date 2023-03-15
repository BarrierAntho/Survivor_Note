#!/bin/bash -x

i=0
j=1
while true
do
	wget https://raw.githubusercontent.com/vim/vim/master/runtime/doc/usr_${i}${j}.txt
	j=$[${j} + 1]
	if [[ ${j} == 10 ]]
	then
		i=$[${i} + 1];
		j=$[0];
	fi;
	if [[ ${i} == 9 ]] && [[ ${j} == 1 ]]
	then
		break;
	fi;
done
