def convert(number)
  
  arr = []

  loop do
    b = number.divmod(10).last
    arr << b
    number = number.divmod(10).first
    break if number == 0
  end

  p arr.reverse.join

end

convert(-579)



# LIST = ['0','1','2','3','4','5','6','7','8','9']

# def convert(number)
  
#   answer = ''

#   loop do
#     number, b = number.divmod(10)
#     answer.prepend(LIST[b])
#     break if number == 0
#   end

#   puts answer

# end

# convert(570)