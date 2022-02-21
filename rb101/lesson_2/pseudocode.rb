# Given a collection of integers.

# Iterate through the collection one by one.
# - save the first value as the starting value.
# - for each iteration, compare the saved value with the current value.
# - if the saved value is greater, or it's the same
#   - move to the next value in the collection
# - otherwise, if the current value is greater
#   - reassign the saved value as the current value

# After iterating through the collection, return the saved value.

# START
# SET
# GET
# PRINT
# IF / ELSE IF / ELSE
# WHILE
# END

# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number
    
#   iterator = iterator + 1

# PRINT saved_number

# END

def find_greatest(numbers)
  saved_number = numbers[0]
  
  numbers.each do |num|
    if saved_number >= num
      next
    else 
      saved_number = num
    end 
  end 
  
  saved_number 
end

p find_greatest([10, 9, 8, 10, 11, 12])

write pseudocode formal and informal for the following:
- a method what returns the sum of two integers
given two integers
add the integers together
return the result

START
# Given two integers, a and b
PRINT a + b 
END

- a method that takes an array of strings, and returns a string that is all those strings concatenated together
Given a collection of strings
Iterate through the collection one by one
  - save the first string as a seperate string
  - for each iteration, add the current string to the seperate string
After iterating through the collection, return the seperate string

START
# Given a collection of strings called 'strings'

SET iterator = 1
SET separate_string = value within strings collection at space 1

WHILE iterator <= length of numbers
  SET separate_string = separate_string + the string value within strings collection at space "iterator"
  iterator = iterator + 1

PRINT separate_string
END

- a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element
Given a collection of integers
Iterate through every other value in the collection including the first
  - for every iteration, save the current value into a seperate collection
After iterating through the collection, return the separate collection

START
# Given a collection of integers called "integers"
SET iterator = 1
SET seperate_collection = empty collection
WHILE iterator <= length of integers collection
  seperate_collection << value within integers collection at space "integer"
  iterator = iterator + 2
PRINT separate_collection
END

- a method that determines the index of the 3rd occurence of a given character in a string
Given a string and a specific character
Iterate through every character in the string
  - for every iteration, compare the specific character to the character in the string
  - if the specific character is the same as the character in the string
    - count and keep track of the number of these instances
    - when the number of these instances equals three, return the location of this character in the string
  - if the specific character is not the same as the character in the string
    - move to the next character in the string
After iterating through the entire string without a third instance of the given character, return nothing.

START
# Given a string called "string" and specific character called "specific"
SET iterator = 1
SET char_instance = 0
SET string_array = a collection of each character in the given string
WHILE iterator <= length of string_array collection
  IF specific == character in the string_array collection at space "iterator"
    char_instance +=1
    IF char_instance == 3
      return "iterator"
  ELSE
    iterator += 1
    go to the next iteration
END

- a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the 2nd array should become the elements at the odd indexes.
Given two collections of number
Iterate through each item in both collections in parallel
  - add the current number of the first collection to a third collection
  - add the current number of the second collection to the third collection
After iterating through the collection, return the third collection

START
# Given two equal length collections of intergers called "number1" and "number2"
SET iterator = 1
SET number3 = an empty collection of numbers
WHILE iterator <= length of "number1"
  number3 << value within number1 collection at space "iterator"
  number3 << value within number2 collection at space "iterator"
PRINT number3
END

  
