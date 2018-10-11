# Problem


# Understand the problem
  # Input
    # String, with or without special character "!" : Rob, Rob!

  # Output
    # Sting in caps if input string is with special character
    # Else sentence case string

# Example
  # What is your name? Bob
  # Hello Bob

  # What is your name? Bob!
  # HELLO BOB. WHY ARE WE SCREAMING?

# Data Structure
  # String

# Algorithm
  # get the string with gets.chomp method and put in a variable
  # change the string into array to check if the last character is "!"
  # If not then print "Hello #{variable}"
  # If yes then print "String in caps including variable in caps without ! sign"

# Code

puts "What is your name?"
name = gets.chomp!

if name.chars.last == "!"
  name = name.chop!.upcase # this can also be written as name.chop => this will delete the last character of the string
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# chomp conditionally removes the tail end of the string (defaulting to newline character)
# chop removes the last character of the string unconditionally. Both chomp and chop can be used destructively with !


