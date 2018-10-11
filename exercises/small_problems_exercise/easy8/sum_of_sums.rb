def sum_of_sums(arr)
  result = 0
  counter = 0
  arr.each do |x|
    result += x
    result = arr[counter] + x
  end

  result - arr.length
end

puts sum_of_sums([1, 5, 7, 3])