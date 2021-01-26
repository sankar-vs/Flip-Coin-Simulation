#!/bin/bash -x
countHeads=0
countTails=0
count=21
while (( $countHeads<$count & $countTails<$count ))
do
        coinFlip=$((RANDOM %2))
        if (( ($coinFlip==0) )); then
                (( countTails++ ))
                echo "Tails"
        else
                (( countHeads++ ))
                echo "Heads"
        fi
done
if (( $countHeads==21)); then
	echo "Heads Won:$countHeads"
else
	echo "Tails Won:$countTails"
fi
#Was not able to find the solution for the problem
