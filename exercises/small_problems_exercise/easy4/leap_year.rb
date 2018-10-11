# Problem

  #In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
  # unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year
  # unless the year is evenly divisible by 400.

  # Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 
  # as input, and returns true if the year is a leap year, or false if it is not a leap year.

# Understanding the problem

  # Input
    # Number as argument input

  # Output
    # Check if year is a leap year and return true or false

  # Model the problem
    # Year should be evenly divisible by 4
    # If year is evenly divisible by 100 then it should be evenly divisible by 400

# Example

  # leap_year?(2016) == true
  # leap_year?(2015) == false
  # leap_year?(2100) == false
  # leap_year?(2400) == true
  # leap_year?(240000) == true
  # leap_year?(240001) == false
  # leap_year?(2000) == true
  # leap_year?(1900) == false
  # leap_year?(1752) == true
  # leap_year?(1700) == false
  # leap_year?(1) == false
  # leap_year?(100) == false
  # leap_year?(400) == true

# Data Structure

  # Number

# Algorithm

  # method will take number as input
  # if the number % 4 == 0 && number % 100 != 0, true
  # if the number % 100 == 0 && number % 400 == 0, true

# Code

def leap_year?(year)
  puts year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end


leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true


def no_leap_year?(year)
  if year % 4 == 0 && year % 100 != 0 || year % 100 == 0 && year % 400 == 0
    puts false
  else 
    puts true
  end
end

no_leap_year?(2015)