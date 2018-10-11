# Problem
  # Write a method that takes one argument, a string and returns the same string with the words in reverse order.
  
# Understand the Problem
  # Explicit Requirements 
      # Input => String as argument
      # Output => String reversed from original input 

# Examples / Test Cases
  # puts reverse_sentence('') == ''
  # puts reverse_sentence('Hello World') == 'World Hello'
  # puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # String

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which takes string as argument
  # Convert the string into an array with string#split method
  # Push the last element of the array to a new array via each do/end block 
  # Return the new array as string by string#join method

# Code

def reverse_sentence(string)
  arr = string.split
  new_arr = []

  loop do 
    new_arr << arr.pop
    break if arr.size == 0
  end
  new_arr.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'

# Code => This can be done using the reverse method also

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end