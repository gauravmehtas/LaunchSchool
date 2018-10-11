# Write a method that takes an integer, and converts it to a string representation.

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   a = number
#   if number < 0
#     number = number * -1
#   end 
#   result = ''
#   loop do 
#     number, x = number.divmod(10)
#     result.prepend(DIGITS[x])
#     break if number == 0
#   end
#   if a > 0
#     result.prepend('+')
#   elsif a < 0
#     result.prepend('-')
#   elsif number == 0
#     number
#   end
# end

# p integer_to_string(0)

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# puts integer_to_string(4321)







# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


def del_vowel(string)
  a = []
  string.chars.each do |x|
    a << x if /[^aeiou]/.match(x) 
  end
  a
end

p del_vowel('hellouiasf')


















