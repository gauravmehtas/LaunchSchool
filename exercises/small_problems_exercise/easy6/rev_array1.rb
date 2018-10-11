# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate 
# the Array passed into this method. The return value should be the same Array object.

lists = [1,2,3,4,5]


def reverse_element(arr)
  arr_new = []
  arr.each { |x| arr_new.push(x)}
  
  first = 0
  last = -1

  arr_new.length / 2.times do
    arr_new[first], arr_new[last] = arr_new[last], arr_new[first]
    first += 1
    last += -1
  end
  arr_new
end


p reverse_element(lists)

p lists