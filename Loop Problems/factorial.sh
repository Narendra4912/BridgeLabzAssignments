read -p "Enter a number to find its factorial = " num

factorial=1

for(( i=1; i<=$num; i++ ))
do
	factorial=$((factorial * i))
done

echo "The factorial of $number is $factorial"