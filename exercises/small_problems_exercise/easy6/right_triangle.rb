def triangle(num)
  counter = 1
  loop do
    x = '*' * counter
    puts x.rjust(num)
    counter += 1
    break if counter > num 
  end
end

triangle(6)