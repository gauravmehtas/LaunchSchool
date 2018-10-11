# Problem
  # Create a method that takes two arguments, multiplies them together and returns the result

# Understand the problem
  # Input
    # Two arguments

  # Output
    # Product of both arguments

# Example
  # multiply(5,3) == 15

#Algorithm

  # method which accept two number arguments
  # multiply the argument number and return the result

# Code

def multiply(number_one, number_two)
  number_one * number_two
end

def square(n)
  multiply(n, n)
end

puts square(9)

# Further Exploration

def squares(n)
  multiply(n, n) ** 6 
end

puts squares(9)
