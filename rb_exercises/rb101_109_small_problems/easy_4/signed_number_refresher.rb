=begin
Write a method that takes a String of digits, and 
returns the appropriate number as an integer. 
The String may have a leading + or - sign; 
if the first character is a +, your method should return a positive number; 
if it is a -, your method should return a negative number. 
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
You may, however, use the string_to_integer method from the previous lesson.
=end

# input: a String of digits
# output: a number, positive or negative, depending on the sign (if there is one)

# Question
# are negative number considered objects of the Integer class? let's check.. The answer is yes, they are!

# if the first character is `+` or a number, the result should be a positive integer.
# if the first character is `-`, the result should be a negative integer.
# could also say that if the first character is `-`, the result is a negative integer, otherwise, positive integer
# (because the only three possibilities for a first character in this case are `-`, `+`, `Integer`, based on the given info)

#Test cases (provided)
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# Algorithm
# check the first character of the input String - depending on the first char, the algorithm will branch
  # if it is an number,
    # convert the String into an Integer
    # return the Integer
  # if it is not a number
    # remove the first character
    # if the first character is negative
      # convert the String into an Integer
      # mutliply by -1
      # return the negative Integer
    # if it is not negative
      # convert the String into an Integer
      # return the Integer
# Algorithm end.

# First, let's run through this algortihm using a test case provided in the problem statement
# Given the String '-570'
# Check if the first character is a number or not: '-', this is not a number so move into the 2nd branch "if it is not a number"
# remove the first character, '-'
# the String is now '570'
# check if the removed first character is '-' or '+'; in this case, it is '-' so move into the branch "if the first character is negative"
# after this point, we won't further use the sign character.
# convert the remaining string '570' into an Integer
# mutliply the returned Integer by `-1`
# return the negative Integer product '-570'
# desired output acheived

# Before we continue, let's make the overall structure of the method `string_to_signed_integer` which takes one parameter, a String of digits `digit_string`, possibly with a sign

# Now, let's develop a way to check the first character of the input String
# we need to access the first character of the input String
#'-570'.first
# let's see if this works in pry - it doesn't work... we need a different way to access the first character of the string... perhaps
#'-570'[0]
# yes! this works - we are returning the first character of the given String.
# now that we can access the first character, we need to check if the first character is an integer or not... maybe
#'-570'[0].class == Integer # let's check if this works... no, the first character of the String is of course a String, not an Integer...
# this is a bit complicated because '-' is a String and we cannot check if it is an Integer
# what we could do is create a String list of numerical characters '0-9' and check if the first character is included in the list
# if it is not, we know the character is a sign (since the only possibilitys are numeric, or sign)
# digits_char_list = %w(0 1 2 3 4 5 6 7 8 9)
# digits_char_list.include?('-570'[0])
# this should create a list of possible digit characters and check if the first character is a part of this list...
# let's check... looks like it works - return value was false since the first char is '-'
# let's see if it works for other numerical strings w/ and w/o signs - yes, it does! Great
# now we can check if the first char is a sign or an integer.
# let's add this to our main method

# we need to save the boolean returned by the sign or integer check and use it as a condition to determine which code branch will be executed (signed or unsigned)
#signed_or_not = digits_char_list.include?(digit_string[0])
# let's check if this works...yes!
# now we can use this as the condition for our conditional statement
# let's make sure out conditional statement executes as expected
# looks like we have it backwards - digits_char_list.include? return true if the first character is a number (no sign) and return false if it is a sign (sign).
# okay, let's try again...
# perfect, it's working

# if there is no sign, we can simply use the method developed in the previous exercise.
# let's focus our attention on the case where there is a sign...

  # if it is not a number
    # remove the first character
    # if the first character is negative
      # convert the String into an Integer
      # mutliply by -1
      # return the negative Integer
    # if it is not negative
      # convert the String into an Integer
      # return the Integer

# we can remove/separate the first character from the rest of the String
# sign = digit_string.shift
# let's test this out - looks like `shift` doesn't work on Strings... during the interview assessment, I will not have time to method hunt
# since this is practice, I will use this chance to look through the available methods and see if there is anything useful to learn
# but in truth, we should not method hunt during the assessment
# the `slice` method seems to fit our use case
# so instead of `shift` we will use `[]`. `slice!` removes a section of the calling string based on the passed index/range and returns the removed section
#sign = digit_string.slice!(0) # for `slice!` we need to use `slice!()` but for `slice` we can use `[]` instead
# let's check if this works. It works! Now `sign` will point to the integer's sign and `digit_string` will point to the mutated reamining character string


# then check if it is negative sign
#sign == '-' # let's try... it works!

  # if it is negative
    #we convert the String into an Integer
    # then multiply -1
  
  # if it is not negative, it must be positive
    # we convert the String into an Integer
  #done with conditional
#done with method

# now that we have built the structure for accomodating signs, let's bring in the method from the previous assignment
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
# cool! done! Now we can utilize the method `string_to_integer` which takes a string `digits_string` and returns an Integer, as we wish...


def string_to_signed_integer(digits_string)
  digits_char_list = %w(0 1 2 3 4 5 6 7 8 9)
  no_sign = digits_char_list.include?(digits_string[0]) # check if the given string is signed
  # no_sign = !digits_char.starts_with('+', '-')
  
  return string_to_integer(digits_string) if no_sign # if no sign, simply convert to Integer
  
  sign = digits_string.slice!(0) # if there is a sign, separate it from the digits
  return string_to_integer(digits_string) * -1 if sign == '-' # if the sign is negative, convert now separated digits to Integer, multiply by -1 and return
  
  string_to_integer(digits_string) # if the sign is not negative (aka positive), simply convert now separated digits to Integer.
  
  # if no_sign #true, numerical string does not have a sign
  #   # no sign
  #   # we can simply convert the input numerical string as is into an integer
  #   # using the method we developed in the previous exercise
  #   string_to_integer(digits_string)
  # else # false, numerical string is signed
  #   # signed
  #   sign = digits_string.slice!(0)
  #   # we now enter another if conditional that branches based on the sign!
  #   if sign == '-'
  #     # convert String to Integer
  #     string_to_integer(digits_string) * -1
  #     # multiply by -1
  #     # done!
  #   else
  #     # convert String to Integer
  #     string_to_integer(digits_string)
  #     # done!
  #   end
  # end
  
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Notes
# `String#starts_with()` returns `true` if the calling String starts will the passed argument, String or regex expression
# `String#[]` aka the slice method
# solve algorithmically first, then implement to completion, then refactor for clarity