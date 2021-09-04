read -p "Enter any number = " num

power=1

for (( i=1; i<=$num; i++))
do

power=$(( power*2 ))

echo "$power"
done