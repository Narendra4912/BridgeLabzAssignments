read -p "Enter Number to check = " num

reverse=0
flag==0

function isPrime(){
for((i=2; i<=num/2; i++))
do
	if [ $((num%i)) -eq 0 ]
  	then
    		flag=1
  	fi
done

if [[ flag == 1 ]]
then
	echo "$num is not a prime number."
else
	echo "$num is a prime number."
fi
}

function isPalindrome() {
while [ $num -gt 0 ]
do
temp=`expr $num % 10 `
num=`expr $num / 10 `
reverse=`expr $reverse1 \* 10 + $temp`
echo "Palindrome number of $num is a $reverse"
done
}

isPrime $num
isPalindrome $num

isPrime $reverse

