def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1,2,4,5,6], [3,4,5,7,7,8,9])

# another method is to use array#| (union) method