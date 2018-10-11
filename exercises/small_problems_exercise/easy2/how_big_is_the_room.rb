# Problem
  # Build a program that asks a user for the length and width of a room in meters and 
  # then displays the area of the room in both square meters and square feet.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # program ask number input from user for lenght and width of room in meters

      # Output
        # display the area of the room in sq meter and sq feet

  # Requirements Not So Explicit 
      # Model the problem from examples and describe them into computational words (explicitly)

      # 1 sq meter == 10.7639 sq feet
      # No Validation of input is required

# Examples / Test Cases
  # Enter the length of the room in meters:
  # 10
  # Enter the width of the room in meters:
  # 7
  # The area of the room is 70.0 square meters (753.47 square feet).

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number
    # Use of operators to calculate the area

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # puts the enter information message
  # gets.chomp.to_f for converting inputs into float 
  # calcuate the area of the room by multiplying length * width
  # display the area in sq meters and sq feet (conver sq mt into sq feet with formula)

# Code

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
puts "The area of the room is #{area} square meters (#{(area * 10.7639).round(2)} square feet.)"

# Code

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

sq_feet = (length * width).round(2)
sq_inches = (sq_feet * 144).round(2)
sq_cm = (sq_inches * 6.4516).round(2)

puts "The area of the room is #{sq_feet} square feet, #{sq_inches} square inches & #{sq_cm} square centimeters."