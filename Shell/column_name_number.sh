#!/bin/bash
#echo HOLA
FILE_NAME=$1
DELIMITER=$2
NUM_OF_COLUMNS=$(head -1 $FILE_NAME | tr $DELIMITER "\n" | wc -l)
echo num of columns = $NUM_OF_COLUMNS
#echo "File name: $FILE_NAME with delimiter=$DELIMITER"
paste <(seq $NUM_OF_COLUMNS) <(head -1 $FILE_NAME | tr $DELIMITER "\n")




