# Question 1

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

numbers = [1,2, 2, 3] 

# because array#uniq is not a mutating method

# Question 2

# ! & ? are part of method name and not ruby syntax. there implementation depends upon what method is doing

# 1. != means not equal
# 2. ? is a ternary operator for if..else
# 3. !! before something is turning any object into boolean equivalent 
# 4. ! before something is turning any object opposite of its boolean equivalent

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

# Question 4

numbers = [1,2,3,4,5]

# numbers.delete_at(1) - delete element on index 1 of the collection and return the mutated array

# numbers.delete(1) - deletes element 1 in the collection and return the mutated array

# Question 5

(10..100).include?(42)

# Question 6

famous_words = "seven years ago..."

"Four score and " << famous_words

famous_words.prepend("Four score and ")

# Question 7

42

# Question 8

flintstones.flatten!

# Question 9

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select { |key, _| key if key == "Barney"}.to_a.flatten
flintstones.assoc("Barney")


