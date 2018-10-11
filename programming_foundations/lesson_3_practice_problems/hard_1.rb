# Question 1

# greeting will return nil and no undefined variable exception is thrown. if the variable is initialized insie the if conditional block, even if the
# block does not get executed the local variable is initialized to nil

# Quesiton 2

greetings = { a: 'hi there'}

# reference to greetins[:a] is tied to informal_greeting and << operator mutates and return the current object

# to save greetings there are options like informal_greeting = greetings[:a].clone or concat with + operator which returns new sting
# object and keeps the original from changing.

# Question 3

# a)

# one is one
# two is two
# three is three

# b)

# one is one
# two is two
# three is three

# c)

# one is two
# two is three
# three is one

# Question 4

def dot_seperated_ip_address(input_string)
  dot_seperated_ip_words = input_string.split('.')
  return false if dot_seperated_ip_words.size != 4

  dot_seperated_ip_words.each do |word|
    if word.match(/[^0-9]/)
      return false
      break
    end
  end

  true

end