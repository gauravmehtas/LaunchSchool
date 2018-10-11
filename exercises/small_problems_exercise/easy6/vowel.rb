# Write a method that takes an array of strings, and returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


def remove_vowels(arr)
  new_arr = []
  arr.join(' ').chars.map { |x| new_arr << x if /[^aeiou]/i.match(x)}
  new_arr.join('')
end

p remove_vowels(%w(greenYELLOWblackwhite))

# another method is 

# arr.map { |word| word.delete('aeiouAEIOU')}