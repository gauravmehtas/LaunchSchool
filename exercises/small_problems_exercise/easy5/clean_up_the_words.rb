# Problem

# Given a string that consists of some words and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced 
# by spaces. If one or more non-alphabetic characters occur in a row, you should only have one 
# space in the result (the result should never have consecutive spaces).


# Understand the Problem
  # Explicit Requirements 
      # Input
      # Output

  # Requirements Not So Explicit 
      # Model the problem from examples and describe them into computational words (explicitly)

  # Implicit Knowledge Present Without Any Clear Requirments 
      # Implicit knowldege needs to be captured and converted into explicit rules with computational language
        # Identifying and defining important terms and concepts
        # Ask questions to verify your understanding

# Examples / Test Cases

  # cleanup("---what's my +*& line?") == ' what s my line '

# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

# Abstraction
  # Rely on language built in abstractions: String/Regex, Array, Hash/Object
  # Avoid solving big problems!
    # Always, always, break bigger problems into smaller problems
    # Don't try to walk through a wall

  # Lay out the general steps of an algorithm, without having to go to details
    # Solve a problem in 1-2 sentences
    # If you can't, raise your abstraction
    # Create helper methods/functions
    # Push detailed steps to methods/functions

# Code

# def cleanup(string)
#   a = string.chars.map do |x|
#     if ("a".."z").include?(x)
#       x
#     else
#       ' '
#     end
#   end

#   a.compact.join.squeeze(' ')
# end

# p cleanup("---what's my +*& line?")


# # string.gsub!(/[^a-z]/i, ' ').squeeze(' ')


# def word_sizes(string)
#   count = Hash.new(0)
#   string.split.each do |x|
#     clean_word = x.delete('^A-Za-z')
#     count[clean_word.length] += 1
#   end
#   count
# end

# p word_sizes('Hey diddle diddle, the cat and the fiddle!')
ALPHANUMERIC = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}

# def alphabetic_number_sort(range)
#   arr = range.to_a.map do |word|
#     ALPHANUMERIC[word]
#   end
#   arr.sort.map do |num|
#     ALPHANUMERIC.key(num)
#   end
# end


ARR = %w(zero one two three four)

x = [0, 1, 2, 3, 4]

p x.sort_by { |y| ARR[y]}

p x
# p alphabetic_number_sort(0..19)
