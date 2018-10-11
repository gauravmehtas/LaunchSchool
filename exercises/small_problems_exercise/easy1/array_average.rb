# Problem
  # Write a method that takes one argument, an array containing integers, and returns 
  # the average of all numbers in the array. The array will never be empty and the numbers will 
  # always be positive integers.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # method takes array as argument
        # array only contain integers
        # array will not be empty
        # all integers will be positive numbers

      # output
        # method will return the average of all the elements of the array as integer

  # Examples / Test Cases
    # puts average([1, 5, 87, 45, 8, 8]) == 25
    # puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Array of Integers
    # Number

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # define a method with takes array of integer as argument
  # apply array#reduce method to add all the array elements
  # once added divide the sum by array.size

# Code

def average(array)
  array.reduce(:+) / array.size # for float apply to_f method to size.
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40