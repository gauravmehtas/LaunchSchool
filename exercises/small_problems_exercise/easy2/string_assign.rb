names = 'Bob'
save_name = names
names.upcase!
puts names, save_name

p array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)

array2 = []

array1.each { |x| array2 << x}

p array2