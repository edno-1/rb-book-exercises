# previous `string_to_integer` method
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
#end method

# refactor the given solution for string_to_signed_number problem

# solution:
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# refactor to call `string_to_integer` and `string[1..-1]` only once each
# perhaps I can pre-emptively call `string[1..-1]` and save the returned value by assigning a variable to it
  # this will allow me to reuse the value without recalling `string[1..-1]`
# let's try...
# string_without_sign = string[1..-1] # test in pry - it works!
# but before we add it to the code, let's understand the solution algorithmically and then see if we can refactor as desired

# Algorithm
# we define a method string_to_signed_integer which takes one parameter `string`, converting a numerical string into it's corresponding integer, signed or not
# we access the first character of the string
# if it is `-`
  # we return a negative version of only the numerical characters of the string converted to an Integer
# if it is `+`
  # we return the numerical characters of the string converted to an Integer
# else
  # we return the entire string converted to an Integer (there is no sign to account for)
# end

# we can to call `string_to_integer` only one time and `string[1..-1]` only one time.
# what we can do is...
# remove the `else` branch and pre-emptively execute `string_to_integer(string[1..-1])` and save the returned value so we don't need to recall the method
# removing the `else` branch means we need to add a `+` sign to any non-signed string
# basically...
  # if the string does not start with a sign, append a `+` to the front of the string
  # we can use `insert` or `concat` or `<<` (which are mutating methods)
# let's test... nice, it works.
# now we can add this before the `case` statement...
# and remove the `else` case because all cases will now fall into either '+' or '-'...
# let's test the current code
# perfect, it works.

# now, let's pre-emptively call `string_to_integer(string[1..-1]) and assign a local variable to the return value so that we don't have to call it twice
# done!

# let's check all test cases now
# perfect, done!

def string_to_signed_integer(string)
  string.insert(0, '+') unless string.start_with?('+', '-') # adds a positive sign if the string is unsigned
  result = string_to_integer(string[1..-1])

  string[0] == '-' ? -result : result
end


# test cases
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

