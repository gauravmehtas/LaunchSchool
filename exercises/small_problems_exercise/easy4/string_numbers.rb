# a = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# b = "570"

# c = []

# b.chars do |x|
#   if a.has_key?(x)
#     c << a.fetch(x)
#   end
# end

# d = 0

# c.each {|x| d = d * 10 + x }

# puts d


# Hexdecimal to integer

# def hexadecimal_to_integer(hex)

#   a = {
#     '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#     '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, "A" => 10,
#     'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
#   }

#   arr = []
#   new_arr = []

#   hex.chars do |x|
#     if a.has_key?(x.upcase)
#       arr << a.fetch(x.upcase)
#     end
#   end

#   p arr

#   size = arr.size - 1

#   arr.each do |x|
#     new_arr << x * (16 ** size)
#     size -= 1
#   end

#   p new_arr.reduce(:+)
# end

# hexadecimal_to_integer('4D9f')

def convert(string)
  a = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

  c = []

  string.chars do |x|
    if a.has_key?(x)
      c << a.fetch(x)
    end
  end

  d = 0

  c.each {|x| d = d * 10 + x }

  if string[0] == "-"
    puts d - d - d
  else
    puts d
  end
end

convert("+570")

#####################

