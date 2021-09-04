declare -a arr

for (( i=0; i<10; i++ ))
do
	random=$((RANDOM%1000))
	arr[$i]=$random
done
echo ${arr[@]}

max=${arr[0]}
min=${arr[0]}

# without sort
for (( i=0; i<10; i++ ))
do
	if [[ $max < ${arr[$i]} ]]
	then
		max=${arr[$i]}
	elif [[ $min > ${arr[$i]} ]]
	then
		min=${arr[$i]}
	fi
done

echo "Without sorting Max = $max and Min = $min"

# after sorting
for ((i = 0; i<10; i++))
do
      
    for((j = 0; j<10-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "After Sorting Array Elements => "${arr[*]}
echo "Minimum number is ${arr[0]}"
echo "Maximum number is ${arr[9]}"