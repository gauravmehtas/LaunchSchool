# Problem

  # Write the program that will ask a user for an input of a word or multiple words and give back number of 
  # characters in the string without taking spaces into account.

# Understand the problem
  # Input
    # String of one or more characters or words

  # Output
    # Number of characters in the string without considering spaces in characters

# Examples
  # Please write word or multiple words: walk fast
    # There are 8 characters in "walk fast".

# Data Structure
  # String
  # Array

# Algorithm
  # get the user input as string
  # split the stirng into array and count the string with value by .length and .join and display value in a string

# Code

puts "Please write word or multiple words:"

enter = gets.chomp

if enter.split.length == 1
  puts "There are #{enter.length} characters in \"#{enter}\"."
elsif enter.split.length > 1
  puts "There are #{enter.split.join.length} characters in \"#{enter}\"."
end


# as per the launch school solution - 

puts "Please write word or multiple words:"
enter = gets.chomp

characters = enter.delete(' ').length
puts "There are #{characters} characters in \"#{enter}\"."

# Learning

# good use of #delete(' '). Eleminate the need of #split and #join