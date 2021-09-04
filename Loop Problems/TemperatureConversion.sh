echo "Temperature Conversion from Fahrenheit to Celsius or vice versa"

echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read -p "Enter your choice = " choice

function ToFaherenheit(){
F_Temp=$(( ($1*9/5)+32 ))
echo "Faherenheit = " $F_Temp
}

function ToCelsius(){
C_Temp=$((($1-32)*5/9 ))
echo "Celsius =" $C_Temp
}


case $choice in 
1) 
	read -p "Enter temperature in degree = " temp
	ToFaherenheit $temp
	;;
2) 
	
	read -p "Enter temperature in Fahrenheit = " temp
	ToCelsius $temp
	;;
*) echo "Wrong Choice !!!"
esac

function ToFaherenheit(){
F_Temp=$(( ($1*9/5)+32 ))
echo "Faherenheit =" $degf
}

function ToCelsius(){
D_Temp=$((($1-32)*5/9 ))
echo "Celsius =" $degc
}

