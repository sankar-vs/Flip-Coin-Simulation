#!/bin/bash -x
countHeads=0
countTails=0
while (( $countHeads<21 & $countTails<21 ))
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
