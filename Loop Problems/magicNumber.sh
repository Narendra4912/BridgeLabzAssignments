echo "Pick any number between 1 to 100 in your mind"

min=1
max=100
center=0

center=$(((min+max)/2))

isNotPickedNumber=1

while (($isNotPickedNumber==1))

do
	 	
	if (($min == $center))
	then
		isNotPickedNumber=0
		echo "The Picked number is $min "
	else
		read -p "Is picked number is less than $center (Y/N) = " choice
	fi
	if [[ "$choice" == "Y" ]]
	then
		max=$center
	else
		min=$center
	fi
	
	center=$(((min+max)/2))

done	