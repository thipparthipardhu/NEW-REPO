#!/bin/bash
# Get the first number from the user
echo "Enter the first number: "
read NUM1
# Get the second number from the user
echo "Enter the second number: "
read NUM2
# Display the menu
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
# Get the user's choice
read CHOICE
# Perform the operation
case $CHOICE in
  1)
    SUM=$(echo $NUM1 + $NUM2 | bc)
    echo "The sum is $SUM"
    ;;
  2)
    DIF=$(echo $NUM1 - $NUM2 | bc)
    echo "The difference is $DIF"
    ;;
  3)
    PROD=$(echo $NUM1 * $NUM2 | bc)
    echo "The product is $PROD"
    ;;
  4)
    DIV=$(echo $NUM1 / $NUM2 | bc)
    echo "The quotient is $DIV"
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
