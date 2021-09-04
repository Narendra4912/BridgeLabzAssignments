echo "Unit Conversions Menu"

echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inches to Feet" 
echo "4. Meter to Feet"

read -p "Enter your choice = " choice

case $choice in
	1) 
		read -p "Enter length in Feet = " length
		toInches=$(echo $length 12 | awk '{ printf "%f", $1 * $2 }')
		echo "$length feet = $toInches inch"
		;;

	2) 
		read -p "Enter length in Feet = " length
		toMeter=$(echo $length 0.308 | awk '{ printf "%f", $1 * $2 }')
		echo "$length feet = $toMeter meter"
		;;

	3) 
		read -p "Enter length in Inches = " length
		toFeet=$(echo $length 12 | awk '{ printf "%f", $1 / $2 }')
		echo "$length inch = $toFeet feet"
		;;

	4) 
		read -p "Enter length in Meter = " length
		toFeet=$(echo $length 3.280 | awk '{ printf "%f", $1 * $2 }')
		echo "$length feet = $toFeet feet"
		;;
	*) 	
		echo "Wrong Input !!!"
		;;
esac