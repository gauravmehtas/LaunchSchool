# def multiply_list arr1, arr2
#   new_arr = []
#   arr1.each_with_index do |value, index|
#     new_arr << value * arr2[index]
#   end
#   new_arr
# end


def multiply_list arr1, arr2
  arr1.zip(arr2).map { |x| x.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])