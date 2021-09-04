# set -x
HEAD_Counter=1
TAIL_Counter=1
RANGE=11

while (( $HEAD_Counter!=11 && $TAIL_Counter!=11 ))
do
	coinResult=$((RANDOM%2))
	if [ $coinResult == 1 ]
	then
		echo "HEAD => $HEAD_Counter"
		HEAD_Counter=$((HEAD_Counter+1))
		if [[ $HEAD_Counter == $RANGE ]]
		then
			echo "HEAD => $HEAD_Counter"
			echo "HEAD Counter becomes 11"
			exit
		fi
	else
		echo "TAIL => $TAIL_Counter"
		TAIL_Counter=$((TAIL_Counter+1))
		if [[ $TAIL_Counter == $RANGE ]]
		then
			echo "TAIL => $TAIL_Counter"
			echo "TAIL Counter becomes 11"
			exit
		fi
	fi
done