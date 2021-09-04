read -p "Enter Number for weekday (1-7) : " number

case $number in 
1) echo "Monday"
;;
2) echo "Tuesday"
;;
3) echo "Wednesday"
;;
4) echo "Thursday"
;;
5) echo "Friday"
;;
6) echo "Saturday"
;;
7) echo "Sunday"
;;
*) echo "Wrong Input .... Week has only 7 days"
esac