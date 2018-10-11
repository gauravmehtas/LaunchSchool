# Problem
  # Write a method that takes one argument, a positive integer and returns a list of the digits in the number.
  # Cannot use built in methods i.e. to_s, to_i etc

# Understand the Problem
  # Explicit Requirements 
      # Input => positive number
      # Output => array of number with each character in the number as array element

# Examples / Test Cases
  # puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
  # puts digit_list(7) == [7]                     # => true
  # puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
  # puts digit_list(444) == [4, 4, 4]             # => true

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number, Array
# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which accept a positive number as argument
  # Apply numeric#divmod method which accept one argument, it this case it will be 10
  # Divmod returns array of remainder, quotient. Apply divmod on array.first element again to break it up.
  # Initialize an empty array where we will push the remainder of the divmod with empty_array.unshift(remainder)
  # Loop the process until the first element of the now array out of number is 0 
  # return array

# Code

def digit_list(number)
  arr = []

  loop do
    x = number.divmod(10)
    arr.unshift(x.last)
    number = x.first
    break if x.first == 0
  end
  arr.size
end

p digit_list(12345)

# Code

def digit_list(number)
  number.to_s.chars.map(&:to_i) # (&:to_i) this is equal to { |x| x.to_i}
end

p digit_list(12345)