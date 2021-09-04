coinResult=$((RANDOM%2))

if [ $coinResult == 1 ]
then
    echo "HEAD"
else
    echo "TAIL"
fi