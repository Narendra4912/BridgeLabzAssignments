# set -x
read -p "Enter day = " day
read -p "Enter month = " month

echo "Date = $day - $month"

<<comment
declare -a arr=("March" "April" "May" "June")

flag=false

for i in "${arr[@]}"
do
	if [[ (($day -lt 31)) && (("$month" == "$i")) ]]
	then
		flag=true
	fi
done
comment

if [[ "$month" == "March" ]]
then
	if [[ $day -gt 19 ]]
	then
		echo "Date = $day - $month is between March 20 upto June 20"
	else
		echo "Date = $day - $month is not in between March 20 upto June 20"
	fi
elif [[ "$month" == "April" ]]
then
	echo "Date = $day - $month is between March 20 upto June 20"
elif [[ "$month" == "May" ]]
then
	echo "Date = $day - $month is between March 20 upto June 20"
elif [[ "$month" == "June" ]]
then
	if [[ $day -lt 21 ]]
	then
		echo "Date = $day - $month is between March 20 upto June 20"
	else
		echo "Date = $day - $month is not in between March 20 upto June 20"
	fi
else
	echo "Date = $day - $month is not in between March 20 upto June 20"
fi
		