# Problem

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements
# and each element has the running total from the original Array.

# Understand the problem

  # Input
    # array of numbers

  # Output
    # array with same number of elements but with running total

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# Data Structure
  # Array

# Algorithm
  # enter array of numbers as argument
  # loop array with enumerable#inject
  # return another array with running total

# Code(what I did originally but #map is easy, i did not thought of that till after reading the solution)

def running_total(arr)
  arr << 0
  arr_new = []
  arr.inject do |sum, x|
    arr_new << sum
    a = sum + x
  end
  p arr_new
end

def running_total(arr) # .map gives out new array with the values, which saves me making a new array like i did
  # in the .inject option
  sum = 0
  p arr.map { |value| sum += value}
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

