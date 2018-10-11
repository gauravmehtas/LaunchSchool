# Problem
  # Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on seperate lines.

# Understand the problem
  # Input
    # No input required as its built in the method

  # Output
    # Method will print all odd numbers between 1 and 99 inclusive in seperate lines.

# Example
  # 1
  # 3
  # 5
  # and so on till 99

# Data Structure
  # Number as Input
  # Array loop as output

# Algorithm
  # Method will change the range of number given inside the method into an array.
  # It will loop through the array and pring all odd numbers

# Code

def odd_number
  (1..99).to_a.each do |x|
    puts x if x.odd?
  end
end

odd_number

# # Further Exploration

# # Repeat the exercise and try Integer#upto & Array#select

# # Code

1.upto(99) { |x| puts x if x.odd?}

(1..99).select { |x| puts x if x.odd?}
