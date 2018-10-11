# Problem
  
  # Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
  # A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Understand the problem
  
  # Input
    # String 

  # Output 
    # Boolean. True if palindrome else false

# Example
  # palindrome?('madam') == true
  # palindrome?('Madam') == false          # (case matters)
  # palindrome?("madam i'm adam") == false # (all characters matter)
  # palindrome?('356653') == true

# Data Structure

  # String
  # Boolean

# Algorithm

  # method accept a string as argument
  # compare string with string.reverse
  # return true if same else false

# Code

# def palindrome?(string)
#   puts string == string.reverse
# end

# palindrome?('madam')
# palindrome?('Madam')
# palindrome?("madam i'm adam")
# palindrome?('356653')

# Further Exploration

# Write a method that determines whether an array is palindromic; that is, the element values appear in the same 
# sequence both forwards and backwards in the array. 

# Now write a method that determines whether an array or a string is palindromic; that is, write a method that can 
# take either an array or a string argument, and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.


# Code

# def palindrome_array?(array)
#   puts array == array.reverse
# end

# palindrome_array?([1,2,3,4,4,3,3,2,1])

# Code

# def palindrome_whatever?(anything)
#   puts anything == anything.reverse
# end

# palindrome_whatever?(['anything','anything'])
# palindrome_whatever?('madam')
# palindrome_whatever?('Madam')
# palindrome_whatever?("madam i'm adam")
# palindrome_whatever?('356653')
# palindrome_whatever?([1,2,3,4,4,3,3,2,1])

# Problem 

# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Code - case-insensitive 

def palindrome_insensitive(string)
    arr = []
    string.split('').each do |x|
      arr << x.downcase if ('a'..'z').include?(x.downcase)
    end
    puts arr.join == arr.join.reverse
end

palindrome_insensitive("Mad ' @am") # This method also delete spaces and numbers if entered. Not upto mark


# Code case-insensitive using delete

def something(string)
  a = string.downcase.delete('^a-z0-9 ')
  puts a == a.reverse
end

something("9 pa ' @ap9")

# Code for integers

def palindrome_numbers(number)
  a = number.to_s.downcase.delete('^0-9')
  puts a
  puts a == a.reverse
end

palindrome_numbers(123321)
