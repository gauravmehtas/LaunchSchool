# Problem
  # 

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
  # Input
  # Output

  # Edge Cases
    # Focus On Input
    # What About Emptiness (nil / null / "" / [] / {})
    # Boundary Conditions
    # Repetition / Duplication
    # Data Types

  # Failures / Bad Input? (What To Do)
    # Raise Exceptions / Report Errors
    # Return Special Value (nil / null / 0 / [] etc)

  # Ask Questions To Verify Understanding

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

def find_greatest(array)
  greatest_number = nil

  array.each do |x|
    greatest_number = array.first
    if greatest_number >= x
      next
    else
      greatest_number = x
    end
  end
  return "bad input" if greatest_number.nil?
  greatest_number
end

puts find_greatest([1])