read -p "Enter number 1 = " num1
read -p "Enter number 2 = " num2
read -p "Enter number 3 = " num3

result1=$((num1+num2*num3))
result2=$((num1%num2+num3))
result3=$((num3+num1/num2))
result4=$((num1*num2+num3))

arr=( $result1 $result2 $result3 $result4 )

max=${arr[0]}
min=${arr[0]}

echo "$num1+$num2*$num3 = $result1"
echo "$num1%$num2+$num3 = $result2"
echo "$num3+$num1*$num2 = $result3"
echo "$num1*$num2+$num3 = $result4"

for ((i = 0; i<4; i++))
do
      
    for((j = 0; j<4-i-1; j++))
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

echo "Minimum result is ${arr[0]}"
echo "Maximum result is ${arr[3]}"