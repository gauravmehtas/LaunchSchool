# Problem
  # Write a method that takes one argument, a string containing one or more words, and returns the given 
  # string with all five or more letter words reversed. Each string will consist of only letters and spaces. 
  # Spaces should be included only when more than one word is present.
  
# Understand the Problem
  # Explicit Requirements 
      # Input
        # string as an argument for a method
        # string can contain one or more words
        # any word with five or more letters will be reversed
        # string consist of only letters and spaces
        # spaces will be introduced if string has more than 1 word

      # Output
        # string with reversed words with five or more letters.

# Examples / Test Cases
  # puts reverse_words('Professional')          # => lanoisseforP
  # puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  # puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # String as input argument
    # Array when string is split
    # String as output with reversed words (if any)

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which takes a string as argument
  # split the string and check for each element length, if length is five or more, reverse the element else put it as is
  # return the string with reversed elements

# Code

def reverse_words(string)
  new_arr = string.split.map do |x|
    if x.length >= 5
      x.reverse
    else
      x
    end
  end
  new_arr.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')