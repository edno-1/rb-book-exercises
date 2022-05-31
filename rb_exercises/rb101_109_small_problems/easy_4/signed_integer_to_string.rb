# signed integer to string

# extend the method developed in the previous exercise to represent negative numbers
# previous method converts non-negative numbers to strings

# PEADC

# input: any integer, positive, negative, zero
# output: string representation of input integer with appropriate sign
  # explicit: positive and negative integers
  # implicit: positive integers are converted to strings with '+' in front
    # zero as well

# examples / test cases
# p signed_integer_to_string(4321) #== '+4321'
# p signed_integer_to_string(-123) #== '-123'
# p signed_integer_to_string(0) #== '0'

# algorithm
# We have an input integer which can be positive, negative, or zero
# There are three different situations based on the input
  # zero => return zero
  # positive
    # convert the integer to a string => return a new string
    # append a '+' to the front of the string => return a mutated string
    # return the string
  # negative
    # multiply the integer by `-1` to make it positive
    # convert the integer to a string
    # append a '-' to the front of the string => return a mutated string
    # return the string
# end

# the integer conversion method is already available from the previous exercise
# the challenge for this exercise is handling the different types of inputs

# data structures
# we can use Integers and Strings - though within the `integer_to_string` method, we utilized arrays as well

# 4321 -> '4321' -> '+4321'
# -123 -> 123 -> '123' -> '-123'
# 0 -> '0'

# code with intent
# first let's create the method definition
# within the method, we need to handle three cases - positive, negative, zero
# before we move further, we need to test our code so far
# let's make sure that the correct case is activated based on the input integer.
# zero case works
# it looks likes `#abs()` is not a method for integers... we need a different way to take the abs value of an integer
# it should be `.abs` instead
# great! works now
# let's check positive - forgot to import the `integer_to_string` method
# okay, great! we are able to activate the correct case based on the input...

def integer_to_string(integer)
  key = %w(0 1 2 3 4 5 6 7 8 9)
  
  integer_array = integer.digits.reverse
  string_digits_array = integer_array.map { |int| key[int] } # returns a new array
  string_digits_array.join('') # returns a new string
end

# def signed_integer_to_string(integer)
#   case integer
#     when 0           then return '0'                              # place the `0` case first so that `abs(integer)` doesn't trigger for `0`return '0'
#     when integer.abs then '+'.concat(integer_to_string(integer))  # convert to new string and append '+' to string
#     else                  '-'.concat(integer_to_string(-integer)) # multiply by `-1`, convert to string, and append '-' to string
#   end
# end

# refactor the given solution
# reduce the three `integer_to_string` calls to just one

def signed_integer_to_string(number)
  integer_string = integer_to_string(number.abs)

  case number <=> 0
  when -1 then "-#{integer_string}"
  when +1 then "+#{integer_string}"
  else         integer_string
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# we could also use the spaceship operator `<=>` to check if the number is greater than, less than, or equal to 0.