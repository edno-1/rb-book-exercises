# selection and transformation

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do
#   current_char = alphabet[counter]
#   # initialize a local variable `current_char` and assign it to the return value
#   # of the invoked method `String#[]` on`alphabet`
  
#   if current_char == 'g'
#     selected_chars << current_char
#   end
  
#   counter += 1
#   break if counter == alphabet.size
# end

# puts selected_chars


# fruits = ['apple', 'banana', 'pear']
# transformed_fruits = []
# counter = 0

# loop do
#   current_fruit = fruits[counter]
  
#   transformed_fruits << current_fruit + 's'
  
#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_fruits


# def select_vowels(str)
#   selected_chars = ''
#   counter = 0
  
#   loop do
#     current_char = str[counter]
    
#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#     end
    
#     counter += 1
#     break if counter == str.size
#   end
  
#   p selected_chars
# end

# select_vowels('the quick brown fox')
# sentence = 'I wandered lonely as a cloud'
# select_vowels(sentence)

# number_of_vowels = select_vowels('hello world').size
# p number_of_vowels


# define a method select fruit such that:...

# input: hash
# output: hash of specific key-value pairs
# rules:
# return a hash
# with n number of selected key-value pairs
# where n is the key-value pairs that satisfy the selection criteria
# the selection criteria being - value == 'Fruit'
# questions:
# what if produce is empty?
# what is the keys are not string objects?
# what if the string is empty?
# what if the value is not a string?
# should we return new collection or a mutated original?

# data structure:
# the return value of the method should be a hash
# do we want the method to return the original hash but mutated OR a new collection/hash? Let's say new collection/hash.

# algorithm:
# initialize a variable `produce` and assign it the given hash
# initialize a variable 'selected_pairs' and assign it to an empty hash - this hash will carry the selected pairs and be returned by the method
# # the hash index differs from the array index which is ordered numerical.
# create an index of keys to use to iterate through the hash
# initialize a counter to iterate through the index of keys to iterate through the hash
# initialized a loop and use an index to iterate through the key-value pairs of the hash
# retrieve the value at the current location of the key index to retrieve the corresponding value to the key
# at each iteration, check the selection condition, namely is the value of the key-value pair == 'Fruit'
# if true, add the current key-value pair to `selected pairs`
# loop until all the pairs in `produce` have been iterated through


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(passed_hash)
#   selected_pairs = {}
#   keys = passed_hash.keys
#   counter = 0
  
#   loop do
#     break if counter == keys.size # place the line at the top of the loop to account for empty passed_hash possibility
    
#     current_key = keys[counter]
#     current_value = passed_hash[current_key]
    
#     if current_value == 'Fruit'
#       selected_pairs[current_key] = current_value
#     end
    
#     counter += 1
#     # break if counter == keys.size
#   end
  
#   p selected_pairs
# end

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2
    
#     counter += 1
#   end
  
#   p doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]


# try creating a `double_numbers!` method that mutates the original passed object

# def double_numbers(numbers)
#   # doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2
#     # doubled_numbers << current_number * 2
    
#     counter += 1
#   end
  
#   # p doubled_numbers
#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

# p my_numbers


# # double the numbers if they are odd - this is combination of transformation and selection - transforming selected elements within the same method

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     current_number *= 2 if current_number.odd?
#     doubled_numbers << current_number
    
#     counter += 1
#   end
#   doubled_numbers
# end
# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]


# # double numbers based on their positions in the array and not their values
# # if we slightly modify the `if` condition, we may be able to do with the previous method

# def double_odd_indices(numbers)
#   doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number
    
#     counter += 1
#   end
#   doubled_numbers
# end
# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_indices(my_numbers)  # => [1, 8, 3, 14, 2, 12]


# # let's update our `double_numbers` method so that it can take an additional argument to determine the transformation criteria
# # let's call this new method `multiply`

# def multiply(my_numbers, multiplication_factor)
#   multiplied_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == my_numbers.size
    
#     current_number = my_numbers[counter]
#     multiplied_numbers << current_number * multiplication_factor
    
#     counter += 1
#   end
  
#   p multiplied_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# multiply(my_numbers, 3) # => [ 3, 12, 9, 21, 6, 18]



# # write a method select_letter
# # that takes a string and
# # returns a new string
# # containing only the letter specified

# # test:
# # question = 'How many times does a particular character appear in this sentence?'
# # select_letter(question, 'a') # => "aaaaaaaa"
# # select_letter(question, 't') # => "ttttt"
# # select_letter(question, 'z') # => ""

# # define a method `select_letter`
# # which takes parameters `sentence` and `character`
# # within the definition
# # initialize a variable `selected_chars` and assign it to an empty string - this is the new string that will hold the specified character
# # initialize a variable `counter` and assign it to the `Integer` value 0 - to track the code's current position within the collection
# def select_letter(sentence, character)
#   selected_chars = ''
#   counter = 0

# # initialize a loop
# # within the loop
# # break if the value of counter is equal to the size of the local variable `sentence` - will exit the loop when the entire collection has been iterated over
# # - break is also the first statement to accommodate for cases of `sentence.size == 0` aka an empty string is passed to the method.
# # - in this case the loop will exit before throwing an error
# # initialized a local variable `current_char` and assign it to the element at position `counter` in the `sentence` variable - this allows us to retrieve the current
# # - value of the collection and work on it freely
#   loop do
#     break if counter == sentence.size
#     current_char = sentence[counter]

# # initialize an `if` statement with the condition that the current character must be equal to the specified `character` local variable
# # - this is the selection part of the method
# # if the condition is met, the `current_char` will be appended to the `selected_chars` variable using the shovel operator
# # end of `if` statement
#     if current_char == character
#       selected_chars << current_char
#     end

# # increment the counter by 1 to move to the next value of the string
# # end the loop
#     counter += 1
#   end

# # return the variable `selected_char`
# # end the method definition
#   p selected_chars
# end


# question = 'How many times does a particular character appear in this sentence?'
# select_letter(question, 'a') # => "aaaaaaaa"
# select_letter(question, 't') # => "ttttt"
# select_letter(question, 'z') # => ""

# p select_letter(question, 'a').size # => 8
# p select_letter(question, 't').size # => 5
# p select_letter(question, 'z').size # => 0