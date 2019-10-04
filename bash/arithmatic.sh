#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

echo "Enter the firstnumber for arithmatic operations"
read firstnumber
echo "Enter the secondnumber for arithmatic operations"
read secondnumber

echo "performing the arithmatic operation"
sum=$((firstnumber + secondnumber))
dividend=$((firstnumber / secondnumber))
substraction=$((firstnumber - secondnumber))
multiplication=$((firstnumber * secondnumber))
modulus=$((firstnumber % secondnumber))
power=$((firstnumber ** secondnumber))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumber/$secondnumber}")

cat <<EOF
$firstnumber plus $secondnumber is $sum
$firstnumber substracted by $secondnumber is $substraction
$firstnumber multiplicated by $secondnumber is $multiplication
$firstnumber power of $secondnumber is $power
$firstnumber divided by $secondnumber is $dividend
  - More precisely, it is $fpdividend with a remainder of $modulus
EOF
