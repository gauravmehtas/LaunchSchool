# Question 3

"My string looks like this now: pumpkins" # => reassignment with += operator. returns a new string object. does not effect my_string outside

"My array looks like this now: ['rutabaga' , 'pumpkins']" # => mutates the array outside as << operator is a distructive call and return the same 
# mutated object.

# Question 4

"My string looks like this now: pumpkinsrutabaga" # => string is mutable, << mutates the caller, uses same object and mutates it and returs it 

"My array look like this now: ['pumpkins']" # => assignment operator assings new array inside the method. my_array and an_array_param are two
# different variables pointing to two different objects in memory.

# Question 5

color == blue || color == green
