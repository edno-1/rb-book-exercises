# problem 1

# Given the array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

=begin
Turn this array into
a hash where
the names are the keys and
the values are the positions in the array

** Understanding the Problem **
input: given array
output:
- a hash
rules:
- a hash
- the hash keys are the names in the array, aka the array elements
- the hash values are the positions of the corresponding elements in the array
questions:
-
thoughts:
- we will be iterating through the entire array
- the new hash will have the same number of elements as the given array
- we need a way to access each element of the array
- we need to access the current index of the array at the same time
- we will need to collection to the hold the new elements
- we need to add elements to the new collection at each iteration

** test cases / examples **
The return value should be as follows:
=> { :0 => "Fred", :1 => "Barney", :2 => "Wilma", ..., :5 => "BamBam" }

** Data Structures/Algorithm **
- Problem has provided the final data structure = hash
which is not the same as the input structure which is an array
- if we are going to use a method to "go throught" the given collection array
then it should provide both the current element and the current index
- we are not transforming the array elements so we don't need a transformation
- we are not selecting either, so an iterating method may be most appropriate
- we can use `each`, `each_with_index`, `each_with_object`...
- 'each_with_object' allows us to pass in an empty collection object but does not
pass the current index of `self` at each iteration
- 'each_with_index' seems appropriate

1) initialize the given array `Flintstones`
2) initialize an empty hash to serve as the new collection of values
3) invoke the method `each_with_index` on the given array
  - pass a block to the method that takes two parameters, `current_name`
  and `current_index`.
  - within the block, assign the `current_name` as a value to the
  key 'current_index' to the collection hash
  - end the block
* the method invocation `each_with_index` should return the original array
* `flintstones` should not be mutated by the method 
4) return the collection hash
=end

# ** code with intent **

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# collection_hash = {}
# flintstones.each_with_index do |current_name, current_index|
#   collection_hash[current_index] = current_name
# end
# p flintstones
# p collection_hash



# problem 2

# Given a hash:
# ages = {
#   "Herman" => 32,
#   "Lily" => 30,
#   "Grandpa" => 5843,
#   "Eddie" => 10,
#   "Marilyn" => 22, 
#   "Spot" => 237
# }
# add up all the ages

=begin
** Understand the problem **
input: hash
output: integer
rules:
- sum all the ages
- return an integer
questions:
- what if the values are not all integers?
- what if one of keys is missing a value? is it possible for key to not have a value and still be part of the hash?

** test cases / examples **
Given the hash above, the return value should be
=> 6174

** data structure / algorithm **
0.5) initialize the variable and assign it to the given hash
1) iterate through the entire hash
2) at each iteration, retrieve the value
3) store the retrieved values a part of a separate collection
4) sum the values in the separate collection
or
0.5) initialize the variable and assign it to the given hash
1) initialize a variable to hold the current sum of ages
2) iterate through the entire hash
3) at each iteration, retrieve the value from the current key-value pair
4) add it to the current sum of ages
5) return the current sum after iterating through the entire hash

=end

# # code with intent
# # algorithm 1
# ages = {
#   "Herman" => 32,
#   "Lily" => 30,
#   "Grandpa" => 5843,
#   "Eddie" => 10,
#   "Marilyn" => 22, 
#   "Spot" => 237
# }
# ages_only = ages.values # steps 1-3
# p ages_only.sum # step 4
# # => 6174
# # success!

# # algorithm 2
# current_sum = 0
# ages.each do |person, age| # we could write it as `ages.each do |_,age|` because we don't utilize the `person` parameter
#   current_sum += age
# end
# p current_sum
# # => 6174
# # success!

# solution states that we can even use `ages.values.inject(:+)` which is an `Enumerable` method.
# `Enumerable#inject`



# problem 3
=begin
Given the following hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
- remove people with
- ages 100 and greater

** Understand the problem **
input: hash
output: same hash
rules:
- given a hash of `name: age` key-value pairs
- remove elements with an age value of 100 and greater
- return the original hash with the selected values removed
- the returned original hash may have less than or equal to the same elements as the original hash, depending on the `age` value of the elements
questions:
- I wonder if the `select` method has a `self` mutating version
- do we need to save the rejected elements?
- are we able to alter the `self` object while it is being iterated through...?
thoughts:
- if we don't need to mutate the original hash, we can simply use `select`...

** test cases / examples **
The return value given the original hash should be
=> { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

** data structures / algorithms **
As for data structures, we can reuse the given original hash structure
For the algorithm,
1) initialize a variabe `ages` and assign it the given hash object
2) iterate through all elements of the hash
3) evaluate the value of each key-value pair
  - if the value is greater than or equal to 100, delete the element
  - if not, move onto the next element in the hash
  - end the evaluation
4) After iterating through all elements, return the original hash
or
we could select all elements with values < 100, meaning any elements without values < 100 would be omitted.
- this would be possible with a `self` mutating `select` method
=end

# # ** code with intent **
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # ages.each do |person, age|
# #   if age >= 100
# #     ages.delete(person)
# #   end
# # end
# # or
# ages.delete_if { |_, age| age >= 100 }
# # or
# # ages.keep_if { |_, age| age < 100 }
# # or
# # ages.select! { |_, age| age < 100 }
# p ages



# problem 4

=begin
Given the hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
- pick out
- the minimum age

** Understand the problem **
input: hash
output: integer
rules:
- pick out
- the minimum age
- in the hash
questions:
- ...

** test cases / examples **
In this case, return should be
=> 10

** data structure / algorithm **
We could use an array to hold the ages,
then compare the ages to each other.
1) initialize a variable and assign it to the given hash object
2) collect all values into a separate collection
3) compare the values of the new collection to each other
4) return the lowest value
=end

# ** code with intent **
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages_only = ages.values
# lowest_age = ages_only.min
# p lowest_age



# problem 5

=begin
Given the following array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
- Find
- the index of
- the first name that
- starts with "Be"

** Understand the problem **
input: array
output: integer
rules:
- Find
- the index of
- the first name that
- starts with "Be"
question:
- ...

** test cases / examples **
This case should return
=> 3

** data structure / algorithm **
Well... we need to access each string of the given array.
For each string, we need to access the first two characters.
Then compare the first two characters to "Be"
As soon as the comparison returns true, we can return the index of the current string with respect to the given array
or, perhaps,
we could slice the first to characters off the front of each string
add those slices to a seperate array
then simply check if each element of the separate array was equal to "Be"
the position index of the matching element in the separate array should be the same as the index of the original string in the original array
... anyways, lets go with the first one
1) initialize a local variable and assign it to the given array
3) initialize a counter to keep track of index position in array
2) iterate through each string of the string array
2.5) initialize a variable and assign it to an empty string - this is to hold the retrieved first 2 characters of each string
3) for each string, retrieve the first 2 characters and save them to the empty string variable
4) compare the now saved 2 characters to "Be"
  - if the comparison returns true, return the index value of the string with respect to the given array
  - if not, move on to the next element of the array
  - end
  
=end
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# counter = 0
# loop do
#   break if counter == flintstones.size
#   current_string = flintstones[counter]
#   first_2 = current_string[0, 2]
  
#   if first_2 == "Be"
#     break
#   end
  
#   counter += 1
# end
# p counter

#or

# flintstones.index { |name| name[0,2] == "Be" } # assuming this method returns the first index for which the block returns true



# problem 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # amend the array so that
# # the names are all shortened to jest the first three characters
# # this reminds me transformation but returning the original array... perhaps `map!` could work
# flintstones.map! { |name| name[0, 3] }
# p flintstones



# problem 7
# given
statement = "The Flintstones Rock"
# desired output
# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# we may be able to...
=begin
0.5) initialize an empty hash to hold the desired output hash
1) split the given string into an array of individual characters
2) delete the " " elements from the array
3) Iterate through each element - this is not a case of transformation or selection so only iteration
  - for each element, count the number of instances of that element in the array
  - save the (counted number value - corresponding element key) to the designated hash
4) return the hash
=end
# ** code with intent **
# char_count = {}

# split_chars = statement.split('')
# split_chars.delete(" ")

# split_chars.each do |char|
#   char_count[char] = split_chars.count(char)
# end

# p char_count

# or

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end



# problem 8

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# what happens when we modify an array while we are iterating over it...? similar to `select!` and `map!` I am assuming
# I guess that it will
=begin
output numbers[0] => 1
`#shift` will removed the first element => 1
output numbers[1] => 3
`#shift` will removed the first element => 2
output numbers[2] but now the index > numbers.size...
so it will not output and we will exit the #each method
=end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end
=begin
similarly to the previous example
output numbers[0] => 1
`#pop` will remove the last element => 4
output numbers[1] => 2
`#pop` will remove the last element => 3
output numbers[2] which does not exist and now index > numbers.size...
so it will not output anything and we will exit the #each method
=end

# they operate on the original array in real time... instead of from stale meta-data (length) or a copy of the original array



# problem 9

# define a method `titleize` which capitalizes each word in a string
# input: string
# output: string
# rules:
# - capitalize each word in the string
=begin
Initialize a local variable and assign it to the given string
Split the string into an array
Iterate through and capitalize each string element of the array
Rejoin the elements of the array into a string with each word separated by " "
Reassign the original variable to the new string
=end

# words = "the flintstones rock"

# def titleize(string)
#   words_array = string.split
#   capitalized_words = words_array.map do |word|
#     word.capitalize
#   end
#   string = capitalized_words.join(' ')
# end

# p titleize(words)

# #or

# words.split.map { |word| word.capitalize }.join(' ')

# walk through the logic, test the examples/test cases, revise algo as needed, then revise code



# problem 10
=begin
Given
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

desired outcome / test case / example

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
  
Thoughts:
- Appears that we need to access the value of each key-value pair of the `munsters` hash
- Then, within that value (which is a hash itself),
we need to access the `Integer` value associated `"age"` key.
- Based on that `Integer` value, we need to add a new key-value pair to the value hash
with key `"age_group"` and value `"adult"`, `"senior"`, or `"kid"` depending on the
integer value
- basically, all the value hashes will be returned with an extra key-value pair added,
the only difference between the pairs being the value.

1) Initialized a local variable and assign it to the given hash
2) Iterate through all the elements of the hash
  - to iterate through a hash, we can use an index composed of the hash keys
  - using those hash keys, we can access the value corresponding to each key
3) Access the hash value for each key-value pair
  - in this case, we already know which key value we would like to access
  - the `Integer` value associated with key `"age"` so we do not necessary need
4) Access the `"age"` value for each hash value
5) If the `"age"` value is...
  - 0-17, add a key `"age_group"` with value `"kid"` to the hash value
  - 18-64, add a key `"age-group"` with a value `"adult"` to the hash value
  - 65+, add a key `"age-group"` with a value `"senior"` to the hash value
6) return the original hash `munsters`
=end

# ** code with intent **
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# munsters.values.each do |characteristics|
#   if characteristics["age"] < 17
#     characteristics["age_group"] = "kid"
#   elsif characteristics["age"] < 64
#     characteristics["age_group"] = "adult"
#   else
#     characteristics["age_group"] = "senior"
#   end
# end

# munsters.values.each do |characteristics|
#   case
#     when (0..17).include?(characteristics["age"])
#       characteristics["age_group"] = "kid"
#     when (18..64).include?(characteristics["age"])
#       characteristics["age_group"] = "adult"
#     else
#       characteristics["age_group"] = "senior"
#   end
# end

# or...

munsters.each do |name, details|
  case details["age"]
    when 0..17
      details["age_group"] = "kid"
    when 18..64
      details["age_group"] = "adult"
    else
      details["age_group"] = "senior"
  end
end

puts munsters