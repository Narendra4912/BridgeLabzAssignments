N1=$((RANDOM%99))
N2=$((RANDOM%99))
N3=$((RANDOM%99))
N4=$((RANDOM%99))
N5=$((RANDOM%99))
echo $N1 " " $N2 " " $N3 " " $N4 " " $N5

echo "Sum of above numbers = "$((N1+N2+N3+N4+N5))
echo "Avg of above numbers = "$(((N1+N2+N3+N4+N5)/5))