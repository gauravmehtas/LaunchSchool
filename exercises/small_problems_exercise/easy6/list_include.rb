# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false


def include?(arr, val)
  arr.each { |x| return true if val == x }
  false
end

puts include?([1,2,3,4,5], 3)
puts include?([1,2,3,4,5], 6)
puts include?([], 3)