#!/bin/bash -x

echo "welcome to flipcoin problem"
headcount=0;
tailcount=0;
while [[ $headcount -le 21 && $tailcount  -le 21 ]]
do
       coinvalue=$(( RANDOM%2 ));
        if [ $coinvalue  -eq 1 ]
        then
             echo "head"
             headcount=$(($headcount+1))

        else
              echo "tail"
              tailcount=$(($tailcount+1))
        fi
done
echo "head count" $(($headcount-1))
echo "tailcount" $(($tailcount-1))
points=$(($headcount - $tailcount))
if [ $headcount -gt $tailcount ]
then
	echo " head won by" $(($headcount-1))
elif [ $headcount -le $tailcount ]
then
	echo " tail won by " $(($tailcount-1))
else
	echo " it is a tie between head and tail"

fi
