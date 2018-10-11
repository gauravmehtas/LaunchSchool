# Question 1

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i<=>a.to_i
end

# Question 2

# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |x|
  x[:published].to_i
end

# Question 3

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr1[2][1][-1]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

arr3[2][:third][0].chars[0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh1.fetch('b')[-1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

hsh2[:third].keys[0]

# Question 4

# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]

arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[-1] = 4

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4

# Question 5

# figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0

munsters.each do |k,v|
  total_age += v["age"] if v["gender"] == "male"
end

p total_age # 444


# Question 6

#  (Name) is a (age)-year-old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |k, v|
  puts "#{k} is a #{v["age"]}-year-old #{v["gender"]}"
end

# Question 7

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

a will not change as reference is not made to variale a

b will change, because b is an array 

# Question 8

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k, v|
  v.each do |word|
    word.chars do |y|
      puts y if 'aeiou'.include?(y)
    end
  end
end

# puts "Vowels in string #{word} is #{word.match(/[aeiou]/)}"

# Question 9

# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically 
# or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |x|
  x.sort do |a, b|
    b <=> a
  end
end

# Question 10

# Given the following data structure and without modifying the original array, use the map method to return a new 
# array identical in structure to the original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |x|
  new_hsh = {}
  x.each do |key, value|
    new_hsh[key] = value + 1
  end
  new_hsh
end

# Question 11

# Given the following data structure use a combination of methods, including either the select or reject method, to return a new 
# array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |x|
  x.select { |y| y if y % 3 == 0}
end

# Question 12

# Given the following data structure, and without using the Array#to_h method, write some code that will return a 
# hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


hsh = {}
arr.each do |x|
  hsh[x[0]] = x[1]
end

# Question 13

# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered 
# logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort do |a, b|
  sub1 = a.select do |x|
    x.odd?
  end
  sub2 = b.select do |y|
    y.odd?
  end

  sub1 <=> sub2
end

# Question 14

# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

# # The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors].each {|c| c.capitalize!}
  elsif value[:type] == 'vegetable'
    value[:size].upcase!
  end
end

# Question 15

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end


# Question 16

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

# customer_orders = [
#   {
#     customer_id: 12,
#     customer_name: 'Emma Lopez',
#     orders: [
#       { order_fulfilled: true, order_value: 135.99 },
#       { order_fulfilled: true, order_value: 289.49 },
#       { order_fulfilled: false, order_value: 58.00 }
#     ]
#   },
#   {
#     customer_id: 32,
#     customer_name: 'Michael Richards',
#     orders: [
#       { order_fulfilled: true, order_value: 120.00 },
#       { order_fulfilled: false, order_value: 85.65 }
#     ]
#   },
#   # rest of data...
# ]

customer_orders = {}

order_data.each do |line|
  if customer_orders.has_key?(line[:customer_id])
    customer_orders[line[:customer_id]][:orders] << {
      order_fulfilled: line[:order_fulfilled],
      order_value: line[:order_value]
    }
  else
    customer_orders[line[:customer_id]] = {
      customer_id: line[:customer_id],
      customer_name: line[:customer_name],
      orders: [
        {
          order_fulfilled: line[:order_fulfilled],
          order_value: line[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

all_orders = customer_orders.map do |line|
  {
    customer_id: line[:customer_id],
    customer_name: line[:customer_name],
    total_order_value: line[:orders].map { |x| x.values[1]}.reduce(:+)
  }
end

order_fulfilled = customer_orders.map do |line|
  {
    customer_id: line[:customer_id],
    customer_name: line[:customer_name],
    total_order_value: line[:orders].map { |x| x.values}.map{|x| x[1] if x[0] == true}.compact.reduce(:+)
  }
end