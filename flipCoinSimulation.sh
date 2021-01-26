#!bin/bash -x
#master branch
coinFlip=$((RANDOM %2))
if (( ($coinFlip==0) )); then
	echo "Tails"
else
	echo "Heads"
fi

