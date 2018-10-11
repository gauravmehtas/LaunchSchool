# Problem
  # Write a program that prompts the user for two positive integers and then prints the result of the following operations
  # Addition, Substraction, Product, Quotient, Remainder and Powers.

# Understanding the problem

  # Input
    # Two Positive Numbers

  # Output
    # Addition, Substraction, Product, Quotient, Remainder and Powers for both positive numbers

# Example
  #

# Data Structure

  # Numbers

# Algorithm
  
  # Get the inputs as integers in variables
  # Perform the operations using different operators on the variables i.e. Addition, Substration, Product, Quotient
  # Remainder & Powers

# Code

puts "Enter First Positive Number"
number_one = gets.chomp.to_i

puts "Enter Second Positive Number"
number_two = gets.chomp.to_i

def operations (number_one, number_two)
  add = number_one + number_two
  puts "==> #{number_one} + #{number_two} = #{add}"
  minus = number_one - number_two
  puts "==> #{number_one} - #{number_two} = #{minus}"
  product = number_one * number_two
  puts "==> #{number_one} * #{number_two} = #{product}"
  quotient = number_one / number_two
  puts "==> #{number_one} / #{number_two} = #{quotient}"
  remainder = number_one % number_two
  puts "==> #{number_one} % #{number_two} = #{remainder}"
  powers = number_one ** number_two
  puts "==> #{number_one} ** #{number_two} = #{powers}"
end

operations(number_one, number_two)

# Further Exploration

# if the numbers are moved to float the remainder operation throws an error.

