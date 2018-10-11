# Problem
  # Write a method that searches for all multiples of 3 or 5 that lie between 1 
  # and some other number, and then computes the sum of those multiples. For instance,
  # if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

  # You may assume that the number passed in is an integer greater than 1.

# Understanding the problem
  # Input
    # Number which will then form a range of number from 1..number entered as agrument of method

  # Output
    # Sum of integers which are the multiples of 3 and 5 in the range of 1..to number entered as argument

# Example

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Data Structure

  # Integer 
  # array

# Algorithm

  # enter the nubmer argument to the method
  # method will then make a range from 1..to number entered
  # range will convert to array which will determine numbers which are multiple of 3 and 5
  # the multiples will be sent to another array and reduce method will add them all

# Code

def multisum(number)
  arr = []
  (1..number).to_a.each do |x|
    arr << x if x % 3 == 0 || x % 5 == 0
  end
  puts arr.inject { |sum, x| sum + x} # this can also be written as ==> arr.reduce(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168


