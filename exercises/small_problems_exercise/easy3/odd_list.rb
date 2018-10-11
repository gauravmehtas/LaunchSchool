# Problem
  # Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
  # The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument 
  # Array.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # Method takes array as argument
        # array can contain any element

      # Output
        # Return an array of the odd indexes of the original argument

# Examples / Test Cases
  # oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  # oddities(['abc', 'def']) == ['abc']
  # oddities([123]) == [123]
  # oddities([]) == []

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # array

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # define a method which takes array as argument
  # array 
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

# def oddities(array)
#   arr = []
#   array.each_with_index do |value, idx|
#     arr << value if idx.even?
#   end
#   arr
# end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

def palindrome?(string)
  string.to_s.reverse == string.to_s
end

puts palindrome?(34543) == true
