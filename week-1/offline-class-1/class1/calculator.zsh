#!/bin/zsh

echo "Simple Calculator"

# Function to perform addition
add() {
  result=$(( $1 + $2 ))
  printf "Result: %'d\n" $result
}

# Function to perform subtraction
subtract() {
  result=$(( $1 - $2 ))
  printf "Result: %'d\n" $result
}

# Function to perform multiplication
multiply() {
  result=$(( $1 * $2 ))
  printf "Result: %'d\n" $result
}

# Function to perform division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
  else
    result=$(( $1 / $2 ))
    printf "Result: %'d\n" $result
  fi
}

# Main script
echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

echo "Select operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

# Read a single character for choice
read -k 1 choice
echo

case $choice in
  1)
    add $num1 $num2
    ;;
  2)
    subtract $num1 $num2
    ;;
  3)
    multiply $num1 $num2
    ;;
  4)
    divide $num1 $num2
    ;;
  *)
    echo "Invalid choice. Please enter a number between 1 and 4."
    ;;
esac
