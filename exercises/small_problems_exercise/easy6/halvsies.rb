# def halvsies(arr)
#   arr_1 = []
#   arr_2 = []

#   if arr.size.odd?
#     arr_1 = arr[0..arr.size/2]
#     arr_2 = arr[arr.size/2 + 1..-1]
#   else 
#     arr_1 = arr[0..arr.size/2 -1]
#     arr_2 = arr[arr.size/2..-1]
#   end
#   [arr_1, arr_2]
# end

# arr = [1,2,3,4,5,6,7,8]
# p halvsies(arr)


def duplicate(arr)
  dup = ''
  arr.each do |x|
    if arr.count(x) > 1
      dup = x
      break
    end
  end
  dup
end

p duplicate([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])