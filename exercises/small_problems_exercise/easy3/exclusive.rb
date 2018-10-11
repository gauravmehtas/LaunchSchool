# Problem

# The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if 
# both operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a
# falsey value if either operand is falsey. This works great until you need only one of two conditions to be
# truthy, the so-called exclusive or. 

# In this exercise, you will write a method named xor that takes two 
# arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

# Understand the problem

  #Input 
    # Two arguments in method

  # OUtput
    # return ture if one of the arguments is true else false

# Examples:

  # xor?(5.even?, 4.even?) == true
  # xor?(5.odd?, 4.odd?) == true
  # xor?(5.odd?, 4.even?) == false
  # xor?(5.even?, 4.odd?) == false

# Data Structure

  # Numbers
  # Boolean

# Algorithm

  # method which takes two arguments
  # compare both arguments with operator || or &&
  # return true for || operator if one of the argument is true, else false
  # return true for && operator if both values are true, else false

# Code

def xor?(one, two)
  (one && !two) || (two && !one)
 end

puts xor?(5.even?, 4.odd?)