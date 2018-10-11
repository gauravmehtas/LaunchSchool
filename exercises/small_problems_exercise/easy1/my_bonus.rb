# Problem
  # Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
  # If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # Method takes two arguments, integer & boolean
        # If boolean is true, the bonus is calculated else returned zero

      # Output
        # bonus which is integer / 2, else zero

# Examples / Test Cases
  # puts calculate_bonus(2800, true) == 1400
  # puts calculate_bonus(1000, false) == 0
  # puts calculate_bonus(50000, true) == 25000

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number, Boolean

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which takes two arguments, number & boolean
  # if boolean is true, bonus is calcualated as number / 2
  # if boolean is false, the method should return zero

# Code

def calculate_bonus(number, boolean)
  boolean ? (number / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000