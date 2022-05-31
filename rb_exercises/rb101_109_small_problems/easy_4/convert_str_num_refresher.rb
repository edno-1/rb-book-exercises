# Convert a String to a Number!

# write a method that takes a String of digits, and returns the appropriate number as an integer.
# you may not use `String#to_i` or `Integer()`
# do not worry about `+` or `-` signs, nor worry about invalid characters - assume all characters will be numeric

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# input = a String of digits
# output = integer
# rules:
  # explicit: noted above

# Plain English:
# string_to_integer('4321') will return the integer 4321
# if we can associate the String numeric characters with their corresponding integers,
# we can convert individual String numeric characters into integers.
# we will know numerical place of each integer by the size of the string.
# if we can convert each String numeric character into its corresponding integer and then
# multiply each one by an exponent of 10 based on the size of the string to determine it's number place value
# and sum those integers together, we will have successfully converted the String of digits into an Integer.

# Algorithm
# 1. Create a relationship between String number characters `0-9` with their corresponding integers.
# 2. Separate the characters of the given string so that they can be converted individually.
# 3. Multiply each converted integer by an exponent of 10 based on it's location in the String.
# 4. Sum all of the final integers to obtain the Integer equivalent of the input String of digits.

# Data structures
# A structure is necessary to hold the relationship between the String `0-9` and their corresponding integers.
# A structures is needed to hold the characters of the string once they are separated.


# We can initialized a local variable `conversion_key`and assign it to an Array of String digits
# which should return an Array where each index position integer value corresponds to the appropriate String digit.
# the conversion key should be accessible within the method, so we can move it into the method.

# we need to separate the input String digits into indivdual characters and hold the separated characters in a data structure
# this should return an array of ['4', '3', '2', '1']
# we can move this into the method as well

# to convert each char into an integer use the conversion key and the array of digit characters
# we can capture the array of digit characters in local variable 'digit_chars'.
# for each character in `digit_chars`, we return the index of the corresponding character in the `conversion_key` array.
# each returned index Integer will be captured in a new Array and assigned to a new local variable `digit_integers`.
# 'digit_integers' should now reference a new Array of separated Integers.
# Let's try it out... testing at each step
# Great! It works. Now we can now successfully convert each String digit input into an Array of separated Integers.
# Let's create a helper method to encapsulate this - `separate_integers` which will take one argument `digits_string` and return `digit-integers`.

# we need to multiply each separate character by the appropriate exponent of 10 based on it's location in the array and the size of the array
# because the array size and index represents the digit's numberical place value
# for instance,
# ['4', '3', '2', '1'] # before we do this, we need to convert each char into an integer
# now that we have converted each char into the appropriate integer using the helper method, we are working with the following:
# [4, 3, 2, 1]
# now that we have an array of integers we need to assign each integer it's appropriate numerical place.
# 4 should be in the 1000ths place
# 3 in the 100ths place
# 2 in the 10ths
# 1 in the 1s
# we can take the size of the array, subtract 1, take 10 to the power of the result and multiply that by the integer in question to get the appropriate number
# for example,
# [4, 3, 2, 1].size #=> 4
# 4 - 1 #=> 3
# 4 ^ (3) #=> 4000
# if we do this for each integer and sum the results we should arrive at the desired number.

# a quicker way to do this might be to
# reverse the array => [1, 2, 3, 4]
# each integer is now at an index, which if 10 is taken to the power of and mutliplied to the integer, we should get the integer in the appropriate numerical place
# for example,
# [4, 3, 2, 1].reverse #=> [1, 2, 3, 4]
# [1, 2, 3, 4].index(1) #=> 0
# 10 ^ 0 #=> 1
# 1 * 1 #=> 1
# [1, 2, 3, 4].index(2) #=> 1
# 10 ^ 1 #=> 10
# 2 * 10 #=> 20
# [1, 2, 3, 4].index(3) #=> 2
# 10 ^ 2 #=> 100
# 3 * 100 #=> 300
#...
# and if we take the sum of the products => 1 + 20 + 300 + 4000 => 4321, we arrive at the desired integer
# let's test this in pry to ensure that this logic and code works...
# good thing we tested this because 10 ^ 0 returns 10 instead of 1... 
# the operator is actually ** not ^
# let's try again...
# looks like it works
# we need to repeat this process for each integer, multiplying the integer by the 10 raised to the power of the integer's index.
# perhaps we can start by iterating each element of the array and returning the index for each element.

# we have shown that we can access both the index and corresponding integer for each index.
# now we need to iterate through each element, taking the integer mutliplied by 10 to the power of the index and
# we also need a local variable to hold the sum of the products.
# now we test to see if the total sum updates correctly through each loop...
# caught a mistake! the total sum is reassigned to the individual products each time but it is not adding the products together...
# lets fix that by adding total sum to the new product each time
# let's test again...
# perfect, it's working.

# now we need to ensure that the overall method `string_to_integers` is returning the integer and now `nil`.
# we can do this by implicitly returning the `total_sum` as the last evaluated line in the method...
# let's test it...
# perfect, it's working

# I believe it is ready to test the other test cases... let's try.
# perfect~!

# we can extract the `total_sum` section as a separate helper method which takes the `reversed_integers` array as a parameter
# let's try...
# looks like it still works!

# In conclusion, we have a method `string_to_integer` which takes a String of numerical digits and converts it to the corresponding integer.
# It utilizes two helper methods - one to convert the String into integers and one to combine the integers into a single integer.


# we should also define a method `string_to_integer` which takes one argument that is the `digits_string`
def string_to_integer(digits_string)
  digit_integers = separate_integers(digits_string)
  reversed_integers = digit_integers.reverse
  total_sum(reversed_integers)
end

def total_sum(reversed_integers)
  sum = 0
  counter = 0
  loop do
    sum += reversed_integers[counter] * (10 ** (counter))
    counter += 1
    break if counter == reversed_integers.size
  end
  sum
end

def separate_integers(digits_string)
  conversion_key = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  digit_chars = digits_string.chars
  digit_chars.map { |char| conversion_key.index(char) }
end

# p total_sum([1, 2, 3, 4])
# p separate_integers('4321')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570