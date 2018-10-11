# Question 1

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

# Question 2

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |hsh|
  hsh[:published]
end

# Question 3

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr1[2][1][-1]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

hsh2[:third].keys[0]

# Question 4

arr1 = [1, [2, 3], 4]

arr1[1][-1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[-1] = 4

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4

# Question 5

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0

munsters.each do |k, v|
  if v["gender"] == "male"
    total_age += v["age"]
  end
end

# Question 6

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  puts "(#{k}) is a (#{v["age"]})-years-old #{v["gender"]}"
end

# Question 7

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

2.3.4 :001 > a = 2
 => 2 
2.3.4 :002 > a.object_id
 => 5 
2.3.4 :003 > b = [5, 8]
 => [5, 8] 
2.3.4 :004 > b.object_id
 => 8014820 
2.3.4 :005 > b[0].object_id
 => 11 
2.3.4 :006 > arr = [a, b]
 => [2, [5, 8]] 
2.3.4 :007 > arr[0].object_id
 => 5 
2.3.4 :008 > arr[1].object_id
 => 8014820 
2.3.4 :009 > arr[0] += 2
 => 4 
2.3.4 :010 > arr[0].object_id # when we reassined array 1st element it's object id changed to 9 and it is not referencing to object id 5 which
# refers to the same object as variable a
 => 9 
2.3.4 :011 > arr[1][0] -= a
 => 3 
2.3.4 :013 > arr[1].object_id
 => 8014820 # here the object_id of variabe b and arr[1] stays the same.

# value of a is 2 as the reference is made to the object in array not to variable a's object

# value of b is now [3, 8] as the reference the same array.

# Question 8

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, v|
  v.join.chars.each do |char|
    puts char if 'aeiouAEIOU'.include?(char)
  end
end

# Question 9

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

# Question 10

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  new_hsh = {}
  hsh.each do |k, v|
    new_hsh[k] = v += 1
  end
  new_hsh
end

# Question 11

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end

# Question 12

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |x, hsh|
  hsh[x[0]] = x[1]
end

# Question 13

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

# Question 14

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |k, v|
  if v[:type] == 'fruit'
    v[:colors].map { |x| x.capitalize}
  elsif v[:type] == 'vegetable'
    v[:size].upcase
  end
end

# Question 15

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |k, v|
    v.all? { |x| x.even?}
  end
end

# Question 16

