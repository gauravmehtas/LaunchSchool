# Question 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |x, hash|
  hash[x] = flintstones.index(x)
end

flintstones_hash = {}

flintstones.each_with_index do |val, idx|
  flintstones_hash[val] = idx
end

# Question 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.reduce(:+)

total_age = 0

ages.each do |_,val|
  total_age += val
end

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select do |key, val|
  val < 100
end

# select returns a new hash containing values on which block return true. 

ages.keep_if do |key, val|
  val < 100
end

# keep_if returns the same hash, destructive call. deletes the values which returs false.

# Question 4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# Question 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |names|
  if names.chars.first(2).join == "Be"
    puts flintstones.index(names)
  end
end

flintstones.index { |name| name[0, 2] == "Be"}

# Question 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map { |name| name[0, 3] }

# Question 7

statement = "The Flintstones Rock"

new_hsh = {}

statement.chars.each do |char|
  next if char == ' '
  new_hsh[char] = statement.count(char)
end

statement.chars.each_with_object({}) do |val, hash|
  next if val == ' '
  hash[val] = statement.chars.count(val)
end

# Question 8

# unexpected results - iterators do not work as they are mutating the array in real time. 

# Question 9

words = "the flintstones rock"


words.split.map do { |val| val.capitalize }.join(' ')

# Question 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, val|
  case val["age"]
  when 0..18
    val["age_group"] = "kid"
  when 18..65
    val["age_group"] = "adult"
  else
    val["age_group"] = "senior"
  end
end

