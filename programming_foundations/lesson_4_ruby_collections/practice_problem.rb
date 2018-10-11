# Question 1

[1,2,3] # because select perform selection based the truthiness of the block return value. since 'hi' is always truthy, it will return the
# original array. Now if instead on 'hi' we had nil then it will always be falsey and an empty array is returned.

# Question 2

# counts the number of elements for which the block returns true value

# Question 3

# the return value of reject in this case is a new array containing all elements of original array as the return value of block each time is 
# not true, as puts return nil.

# Question 4

# this will return a hash { "a" => "ant", "b" => "bear", "c" => "cat" }. each_with_object takes two arguments for block but also takes a method
# argument in a form of hash or array. in this case it's hash. so value argument in the block iterate on the values of array on which method
# each_with_object is called and hash treats the value first element as it's a string as key and value itself as value of the key. each_with_object
# always returns a new object, i.e. whatever is the method argument selection in the method on which block is called. this case its a new hash

# Question 5

# from ruby core docs. hash#shift will take the first key value pair and return it as two element array and leave the hash permanently modified.
# its a destructive method.

# Question 6

# this will be the size of word catterpillar which is 11. here we are chaining two methods. #pop #size on array of string objects. pop will
# permanently take last element of the array (destructive call) and size will count the element on the return value of pop which finally
# returns 11.

# Question 7

# any? method call reutrns true if any the block value returns ture on any iteration. this caes it will return true as 1 and 3 will return
# true for odd? method call.

# Question 8

# this will return first two elements of the array which is [1,2]. non destructive mehtod, will not modify original array.

# Question 9

# [nil, "bear"]. map is a transforming method call on the elements of the collection. it will always return the transformation on all the
# elements of the collection. first is nil becaise the condition for 'ant' returns false, so no value is returned hence nil, condition for bear returns true
# so map returs the element. it will return a new array of all the values.

# Question 10

# new array is returned. puts return nil which evaluates to false, for first iteration, the if condition returns false, so else condition takesover
# and the element is returned. for 2 & 3 if condition returs true, which says to puts num, now puts returs nil and map evaluates the return value of
# block, hence it returns nil for both.
