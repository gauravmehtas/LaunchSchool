def combine(arr1, arr2)
  arr1.zip(arr2).flatten
end

p combine([1,2,3], ['a', 'b', 'c'])