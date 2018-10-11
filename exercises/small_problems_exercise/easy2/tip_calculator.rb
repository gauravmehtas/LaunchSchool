# Problem
  # Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
  # The program must compute the tip and then display both the tip and the total amount of the bill.

# Understand the Problem
  # Explicit Requirements 
      # Input
        # user input for bill amount in dollars and tip rate in percentage

      # Output
        # program should display total bill paid and tip amount

# Examples / Test Cases
  # What is the bill? 200
  # What is the tip percentage? 15

  # The tip is $30.0
  # The total is $230.0

  # Edge Cases
    # What if no tip amount is entered. => display total bill amount and "You are very cheap"

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Number

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # program should ask for user input on bill and tip
  # change the input to floats to calculate up to two decimal points using round method
  # dispay total bill amount and tip amount

# Code

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

if tip == 0.0
  puts "You are very cheap"
  puts "Your total bill without TIP is #{bill}."
else
  tip_amount = (bill * tip / 100).round(2)
  total_bill = (bill + tip_amount).round(2)

  puts "The tip is #{tip_amount}."
  puts "The total is #{total_bill}"
end
