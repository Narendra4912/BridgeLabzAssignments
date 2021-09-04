read -p "Enter the year :" year

if [[ $(($year%4)) == 0 || ($(($year%100)) != 0  && $(($year%400)) == 0) ]]
then
	echo "Year $year is leap Year"
else
	echo "Year $year is not leap year"
fi