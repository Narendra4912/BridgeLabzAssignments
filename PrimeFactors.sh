
read -p "Enter number to find the prime factor = " number

index=0

function factors(){
	echo $1 $2
	j=$($2 + 1)
	result=$(($2*$j))
	if [ $result == $1 ]
	then
	  a[$index]=$2
	  index=$(index+1)
	  a[$index]=$(($2+1))
	fi
}

for ((i=2; i<=$number; i++))
do
	echo $number $i
	factors $number $i 
done

echo "Result = $a[*]"
