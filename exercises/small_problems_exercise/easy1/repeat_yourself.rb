# Problem
  # Write a method that takes two arguments, a string and a positive integer
  # and prints the string as many times as the integer indicates.

# Understand the Problem
  # Explicit Requirements 
      # Input => string and positive number as argument to a method
      # Output => string prints out the number of times the positive number indicates

# Examples / Test Cases
  # Input => repeat('Hello', 3)
  # Output  
    # Hello
    # Hello
    # Hello

# Data Structure
  # Think about rules and requirments as data
    # String & Number

# Algorithm

    # Define a method with two arguments(string, number)
    # By integer#times method print the string number of times indicated by number

# Code

def repeat(string, number)

  number.times {puts string}

end

repeat('hello', 3)