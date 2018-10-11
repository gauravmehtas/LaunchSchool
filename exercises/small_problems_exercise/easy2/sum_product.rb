# Understand the problem
  # Input
    # Integer, Positive Number greater than 0

  # Output
    # Either Integer value of addition between 1 and the entered number with all the numbers within
    # Or Integer value of product between 1 and entered number with all the numbers within
  
  # Example 
    # 

  # Data Structure
    # Number
    # Array

  # Algorithm
    # capture the user input with gets.to_i and pass it onto a variable
    # Ask the user to enter 's' for addition or 'p' for product
    # initialize an array from (1..user_input variable), loop through it and
    # add the elements or multiply them depending on the selection by user.
    # Once calculated display the string with sum or product

# Original Code

# number = gets.to_i
# puts "Please enter an integer greater than 0:"

# puts "Enter 's' to compute the sum, 'p' to compute the product."
# option = gets.chomp

# arr = (1..number).to_a

# if option == 's'
#   counter = 0
#   arr.each do |x|
#     counter = counter + x
#   end
#   puts "The sum of the integers between 1 and #{number} is #{counter}."
# elsif option == 'p'
#   counter = 1
#   arr.each do |x|
#     counter = counter * x
#   end
#   puts "The product of the integers between 1 and #{number} is #{counter}."
# else
#   puts "Oops. Unknown Operation."
# end

# # Code changed after looking at the answer, included validation

#   puts "Please enter an integer greater than 0:"
#   number = gets.to_i

#   puts "Enter 's' to compute the sum, 'p' to compute the product."
#   option = gets.chomp.downcase

# def compute_sum(number)
#   add = 0
#   1.upto(number) { |x| add += x}
#   add
# end

# def compute_product(number)
#   product = 1
#   1.upto(number) { |x| product *= x}
#   product
# end

# if option == 's' && number > 0
#   puts "The sum of the integers between 1 and #{number} is #{compute_sum(number)}."
# elsif option == 'p' && number > 0
#   puts "The product of the integers between 1 and #{number} is #{compute_product(number)}."
# elsif number <= 0
#   puts "Enter number only greater than zero, let's start again!"
# elsif option != 's' && option != 'p'
#   puts option
#   puts "Oops, please enter only 's' for sum or 'p' for product."
# end


# Further Exploration

puts (1..5).reduce(:+)

puts (1..5).reduce(1, :*)

puts (1..5).inject { |sum, x| sum + x}

puts (1..5).inject(1) { |product, x| product * x}

a = ['fuckyou', 'hello', 'fine', 'ok', 'educational', 7]

puts (a.map { |x| x.to_s}).inject { |memo, word| memo.length > word.length ? word : memo}

