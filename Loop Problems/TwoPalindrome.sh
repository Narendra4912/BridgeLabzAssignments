  
read -p "Enter number1 = " num1
read -p "Enter number2 = " num2
number=$num
reverse1=0
reverse2=0

function isPalindrome() {
while [ $num1 -gt 0 ]
do
temp1=`expr $num1 % 10 `
num=`expr $num1 / 10 `
reverse1=`expr $reverse1 \* 10 + $temp1`
done

while [ $num2 -gt 0 ]
do
temp1=`expr $num2 % 10 `
num=`expr $num2 / 10 `
reverse2=`expr $reverse2 \* 10 + $temp1`
done

# echo $reverse

if [ $reverse1 -eq $reverse2 ]
then
    echo "Numbers are palindrome"
else
    echo "Number are not palindrome"
fi
}

isPalindrome $num1 $num2