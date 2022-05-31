=begin
Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as
Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way
and construct the string by analyzing and manipulating the number.
=end

# input: positive integer or zero
# output: string of digits
# rules:
  # explicit: Do not use any of the available standard Ruby conversion methods
  # implicit:

# examples / test cases:
# will need these to test the code once it is written
# will also utilize these to walk through algorithm...
# p integer_to_string(4321) #== '4321'
# p integer_to_string(0) #== '0'
# p integer_to_string(5000) #== '5000'

# data structures
# unlike a string, which can easily be separated into it's individual characters due to it's psuedocollection nature,
# an integer is a single unit, not as easily split, and it's digit cannot be access individually

# thoughts
# how to we extract each digit from the integer?


# Algorithm - keep it high level and free of implementation details
# we have an integer
# we need to convert the integer into a string
# 1) we can create an key that correlates each Integer 0-9 with it's String character counterpart
# 2) then extract each digit of the Integer
# 3) convert the extracted integer into it's corresponding String character using the key
# 4) repeat steps 2-3 (the extraction and conversion process) for each digit of the entire integer
# 5) combine the resulting String characters into a complete String

# Let's implement step 1
# this is similar to the key we created in the previous two exercises
# the index represents Integers 0-9 and the elements of the array represent the individual String chars
# let's test - perfect, it works.

# Step 2
# extract each digit of the integer
# Starting from either the largest numerical place Integer or the lowest, we need to identify each digit and it's numerical place
# approach 1
# If we have 4321, we can obtain 4 by dividing by 1000.
# let's try...
# yes! 4321 / 1000 returns 4 and not the remainder
# are we able to subtract 4*1000 from the integer, we will have 321, from which we can divide 100 to obtain 3
# then subtract 3*100, so we have 21, from which we can divide by 10 to obtain 2, and subtract 2 * 10
# to be left with the last digit 1
# let's see if it works
# 4321 / 1000 = 4
# 4321 - (4 * 1000) = 321
# 321 / 100 = 3
# 321 - (3 * 100) = 21
# 21 / 10 = 2
# 21 - (2 * 10) = 1
# # question = how would be determine which exponent of 10 to divide by first?
# # Ruby would need to know the size of the integer, which it does not. 

# # approach 2
# # what if we started from the bottom up?
# # we would need to obtain
# 1
# 2
# 3
# 4
# 4321 % 10 => 1
# 4321 % 100 => 21
# 4321 % 1000 => 321
# 4321 % 10000 => 4321
# 4321 % 100000 => 4321
# # or
# 4321 % 10 => 1
# 4321 - 1 => 4320
# 4320 % 100 => 20
# 4320 - 20 => 4300
# 4300 % 1000 => 300
# 4300 - 300 => 4000
# 4000 % 10000 => 4000
# 4000 - 4000 = 0
# # or
# 4321 % 10 => 1
# 4321 / 10 => 432
# 432 % 10 => 2
# 432 / 10 => 43
# 43 % 10 => 3
# 43 / 10 => 4
# 4 % 10 => 4
# 4 / 10 => 0
# this final approach seems to be the simplest of the three and returns the digits as we need them

# before we move on, let's define a method `integer_to_string` which takes one parameter, an Integer,
# and converts it into a String

# let's create a helper method which will take the given integer and return each digit seperately,
# using the logic outlined above - method `individual_digits` which takes one parameter, an Integer.

# the method we've created `individual_digits` doesn't return each digit separately but we are able
# to successfully access each digit individually.

# if we continue with our original intented usage for individual digits, we would need to call the method
# obtain the single digit, save the digit, call the method again, save the digit, call it again, etc
# until we obtained every digit of the integer
# let's try this...
# we need an array to hold the obtained digits

# we've extracted the logic of the individual digits and added it to a alternative helper method
# `array_of_individual_digits(integer)` which will take the given integer and return an Array of individual Integers

# so far we have successfully extracted each digit of the given Integer and collected them into an Array.
# Step 3) convert the extracted integer into it's corresponding String character using the key
# the individual integers denote the index of the corresponding String digit
# for each Integer element of the array, we can find the corresponding String digit and save it to a new collection
# let's try.. perfect

# now we have an Array of String digits!
# Step 4) repeat for each digit - already taken care of by the tranformation method `map`

# Now Step 5) combine the resulting String characters into a complete String
# we can iterate through the Array, appending each element to a new String
# or we can use Array.join('')
# let's try...


def integer_to_string(integer)
  key = %w(0 1 2 3 4 5 6 7 8 9)
  
  integer_array = integer.digits.reverse
  string_digits_array = integer_array.map { |int| key[int] } # returns a new array
  string_digits_array.join('') # returns a new string
end

# def array_of_digits(integer) # method `digits` accomplishes the same function
#   digits_array = []
#   loop do
#     digit = integer % 10
#     digits_array.unshift(digit)
#     integer = integer / 10
#     break if integer == 0
#   end
#   digits_array # returns the array initialized in this method
# end

#p array_of_digits(4321)
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
