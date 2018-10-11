# Problem
  
  # Write a program that solicits 6 numbers from the user, then prints the message that describes weather or not the
  # 6th number appears amongst the first 5

# Understanding the problem

  # Input
    # Program ask for Number input

  # Output
    # Checks the last input against all other inupts and outputs true or false if the last input was entered before

  # Example
    # 


  # Data Structure

    # Number
    # Array

# Algorithm

  # Initialize an array for input
  # Initialize an array for the input numbering
  # Write a loop and ask for user input incrementing the input number from input array.
  # Push the input inside an initialized array
  # Loop breaks when array.size is 5, but user is asked to enter last input
  # Check inside the array with .include? method if the last user input exist in the array
  # If it does, display "The numnber #{last input} appears in #{array}"
  # Else, display "The numnber #{last input} does not appears in #{array}"

# Code

arr = []
indexes = ['1st', '2nd', '3rd', '4th', '5th', 'last']
counter = 0
indexes.each do |x|
  puts "Enter the #{indexes[counter]} number:"
  arr << gets.to_i
  counter += 1
  break if arr.size == 5
end

puts "Enter the #{indexes.last} number:"
check = gets.to_i

if arr.include?(check)
  puts "The number #{check} appears in #{arr}"
else
  puts "The number #{check} does not appears in #{arr}"
end