# Problem
  # Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # method takes positive integer as argument

      # Output
        # return the sum of digits of all the numbers in that integer

  # Requirements Not So Explicit 
      # Do not use whie, until, loop and each methods

# Examples / Test Cases
  # puts sum(23) == 5
  # puts sum(496) == 19
  # puts sum(123_456_789) == 45

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number
    # Array

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # define a method which takes an integer as argument
  # apply divmod method to break the number into array and seperate the last number as last array element
  # recursive method call if array.first element is != 0
  # add the array elements and return the sum

# Abstraction
  # Rely on language built in abstractions: String/Regex, Array, Hash/Object
  # Avoid solving big problems!
    # Always, always, break bigger problems into smaller problems
    # Don't try to walk through a wall

  # Lay out the general steps of an algorithm, without having to go to details
    # Solve a problem in 1-2 sentences
    # If you can't, raise your abstraction
    # Create helper methods/functions
    # Push detailed steps to methods/functions

# Code

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45