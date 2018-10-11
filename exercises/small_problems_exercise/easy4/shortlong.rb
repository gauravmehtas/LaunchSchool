# Problem
  
  # Write a method that takes two strings as arguments, determines the longest of the two strings,
  # and then returns the result of concatenating the shorter string, the longer string, and the 
  # shorter string once again. You may assume that the strings are of different lengths.

# Understanding the problem

  # Input
    # method with two string as argument

  # Output
    # concatenating short long short string

# Example
  
  # short_long_short('abc', 'defgh') == "abcdefghabc"
  # short_long_short('abcde', 'fgh') == "fghabcdefgh"
  # short_long_short('', 'xyz') == "xyz"

# Data Structure

  # String

# Algorithm

  # write a mehtod which takes two string auguments
  # compare the length of both strings and return concatenated short long & short string

# Code

def short_long_short(one, two)
  puts one + two + one if one.length < two.length
  puts two + one + two if two.length < one.length
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')