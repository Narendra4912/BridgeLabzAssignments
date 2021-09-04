
read -p "Enter any number = " num

count=0

power=0

lastNum=256

while (( $count<=$num && $power<$lastNum ))
do
	power=$((2**count))
	echo $power
	count=$((count+1))
done