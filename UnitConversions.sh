# a. 1ft = 12 in then 42 in = ? ft =>
feet=1
inches=12
newInches=42
echo "General Information 1 Feet = 12 Inches"
conversion=$(echo $newInches $inches | awk '{ printf "%f", $1 / $2 }')
echo "42 Inches Means = $conversion Feet"

# b. Rectangular Plot of 60 feet x 40 feet in meters =>
meter=3.28   # 1 meter = 3.28 feet
length=$(echo 60 3.28| awk '{ printf "%f", $1 / $2 }')
width=$(echo 40 3.28| awk '{ printf "%f", $1 / $2 }')
echo "60 feet = $length meter and 40 feet = $width meter"

# c. Calculate area of 25 such plots in acres =>
singlePlotArea=$(echo $length $width| awk '{ printf "%f", $1 * $2 }')
totalArea=$(echo $singlePlotArea 25| awk '{ printf "%f", $1 * $2 }')
areaInAcre=$(echo $totalArea 4046.86| awk '{ printf "%f", $1 / $2 }')
echo " Single Plot area in meter = $singlePlotArea "
echo " 25 Plot area in meter = $totalArea "
echo " 25 Plot area in acre = $areaInAcre "