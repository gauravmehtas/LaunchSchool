# Problem
  # Build a program that displays when the user will retire and how many years she has to work till retirement.

# Understand the Problem
  # Explicit Requirements 
      # Input 
        # program ask for present age and age when user want to retire

      # Output
        # program output the present year and then the year user will retire.
        # program also display the number of years user has to work

# Examples / Test Cases
  # What is your age? 30
  # At what age would you like to retire? 70

  # It's 2016. You will retire in 2056.
  # You have only 40 years of work to go!

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # user input to number

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # program will ask for user input on present age and retirement age
  # program will calculate the current year
  # program will calculate the years of work remaining by subtracting retirement year - present age
  # program will then calculate years to work to current year to find the retirement year

  # program will then put together all of the outcomes in an output string as per example

# Code

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

x = Time.now
current_year = x.year

years_to_work = retirement_age - age

retirement_year = current_year + years_to_work

puts "Its' #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_work} years of work to go!"
