feet=1
inches=12
newInches=42

echo "General Information 1 Feet = 12 Inches"
conversion= $(echo "$((newInches/inches))"|bc)
echo "42 Inches Means = " $conversion "Feet"