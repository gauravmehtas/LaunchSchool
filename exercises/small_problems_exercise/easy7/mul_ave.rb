def show_multiplicative_average(arr)
  result = 1.to_f
  arr.each { |x| result *= x }
  "The result is #{format('%.3f', result / arr.length)}"
end

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])