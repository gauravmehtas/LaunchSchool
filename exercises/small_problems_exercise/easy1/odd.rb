# Problem
  # Write a method that takes one integer argument, which may be positive, negative, or zero. 
  # This method return true if the number's absolute value is odd. You may assume that the argument 
  # is a valid integer value.

# Understand the Problem
  # Explicit Requirements 
      # Input => Integer (Positive, Negative, Zero)
      # Output => Return ture if the number absolue value is odd

# Examples / Test Cases
  # puts is_odd?(2)    # => false
  # puts is_odd?(5)    # => true
  # puts is_odd?(-17)  # => true
  # puts is_odd?(-8)   # => false
  # puts is_odd?(0)    # => false
  # puts is_odd?(7)    # => true

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Input => Number
    # Output => Boolean

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which will take a number argument.
  # Apply modolus operator on the argument, if it's output zero, return false else true

# Code

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true