# Problem

  # Write a method that determines and return the ASCII string value of a string that is passes as argument
  # ASCII value can be determined by using string.ord method

# Understanding the problem

  # Input
    # String as a method argument

  # ASCII value of the entered string

# Example

  # ascii_value('Launch School')

# Data Structure

  # String
  # Number
  # Array

# Algorithm

  # split the sting as argument into array
  # array.each do for all elements to ASCII value to new arra
  # new array.reduce + to find the total

# Code

def ascii_value(string)
  sum = 0
  string.each_char { |x| sum += x.ord}

  puts sum
end

ascii_value('Launch School')
ascii_value('Four score')
ascii_value('a')
ascii_value('')