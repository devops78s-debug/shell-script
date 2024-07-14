#!/bin/bash

MOVIES=("RRR" "DJ" "murari") # with spaces compulsory
#size is 3,index are 0,1,2
#${PERSON!} 

echo "First Movie is : ${MOVIES[0]}"
echo "Second Movie is : ${MOVIES[1]}"
echo "thirdmovie is: ${MOVIES[@]}"