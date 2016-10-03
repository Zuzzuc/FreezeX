#!/bin/bash
# License: The MIT License (MIT)
# Author Zuzzuc https://github.com/Zuzzuc/
#
# Do NOT use with "set -e", or SFS will fail.
#
l=0 && I=0 && klc=0
s=($@)
sz=${#s[@]}
kl=($(ps -A -o pid))
klz=${#kl[@]}
i=${kl[(1)]}
FS() {
	kill -STOP $i > /dev/null 2>&1
}
SFS() {
	il=0
	while [ $il -le $sz ];do
		if [ "$1" == "${s[$il]}" ];then
			return 0
		fi
		il=$((il+1))
	done
	return 1
}
while : ;do
	if [ $l -ge $klz ];then
		exit 0
	else
		if [ $i != $$ ];then
			if [ $I -le $sz ];then		
				if [ "$(SFS $i;echo $?)" == "0" ];then
					I=$(($I+1))
				else
					FS
				fi
			else
				FS
			fi
		fi
		i=${kl[($klc+1)]}
		klc=$((klc+1))
		l=$((l+1))
	fi
done
exit 0