# Problem
  # Build a program that randomly generates and prints Teddy's age. 
  # To get the age, you should generate a random number between 20 and 200.
  

# Example
  # Teddy is 69 years old!


# Code

puts "Teddy is #{rand(20..200)} years old!"

# Code

puts "Enter Name"
names = gets.chomp

if names == ""
  puts "Teddy is #{rand(20..200)} years old!"
else
  puts "#{names} is #{rand(20..200)} years old!"
end