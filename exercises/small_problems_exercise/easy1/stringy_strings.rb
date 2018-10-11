# Problem
  # Write a method that takes one argument, a positive integer, and returns a string of alternating 
  # 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # Method takes a positive integer as argument

      # Output
        # Returns a string on 0s and 1s always starting with 1. Length of the string matches the argument integer

# Examples / Test Cases
  # puts stringy(6) == '101010'
  # puts stringy(9) == '101010101'
  # puts stringy(4) == '1010'
  # puts stringy(7) == '1010101'

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number as Input
    # String as Output

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which takes a positive integer as argument
  # Initialize an empty array & counter = 0
  # Initialize a loop which checks if array.length == number
  # if not then array[counter], if counter is even, array insert 1 and vice versa
  # array.join as string

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

# def stringy(number)
#   arr = []
#   counter = 0

#   while arr.length != number
#     if counter % 2 == 0
#       arr << "1"
#     else 
#       arr << "0"
#     end
#     counter += 1
#   end
#   arr.join
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Above can also be writeen as 

def stringy(number)
  arr = []

  number.times do |x|
    y = x.even? ? 1 : 0
    arr << y
  end
  arr.join

end
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
