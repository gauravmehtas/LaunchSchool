# Problem
  # Write a method that counts the number of occurrences of each element in a given array.

# Understand the Problem
  # Explicit Requirements 
      # Input => array as argument
      # Output => return the number of occurrence of each array element as string

# Examples / Test Cases

  # Input

    # vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
    # count_occurrences(vehicles)

  # Output

    # car => 4
    # truck => 3
    # SUV => 1
    # motorcycle => 2


  # Edge Cases
    # Empty Array will return 0


# Data Structure
  # Think about rules and requirments as data
    # String / Array / Hash - Object / Number / Compound Data Structures i.e. array of arryas etc.

    # Array as argument in method
    # String as output

# Algorithm
  # Algorithms have to be described in the language of chosen data structure!
  # verify your algorithm with your examples / test cases

  # Define a method which accept an array as argument
  # initialize a variable which points to array.select method to the array for the first element
  # puts the array.first element and number of occurrence of the same from variable.size
  # delete all instances of the array.first element from the original array with array.delete(array.first)
  # break when array.size == 0 

# Code

def count_occurrences(array)

  loop do 
    x = array.select { |x| x == array.first}
    puts "#{array.first} => #{x.size}"
    array.delete(array.first)
    break if array.size == 0
  end

end



vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)