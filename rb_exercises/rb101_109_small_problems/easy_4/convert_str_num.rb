# convert a String to a Number!
=begin
** problem
- write a method that takes a String of digits, and
- returns the appropriate number as an integer.
- do not use `String#to_i` and `Integer()`
input: string
output: integer

** examples / test cases
** data structures
input: string
intermed: ..
output: integer

** algorithm
split the string into an array of chars
transform each char element into appropriate integer using reference hash
multiply each integer with appropriate place (aka 10, 100, 1000...) multiplier
sum all elements into final integer
=end

require 'pry'

# def reference_hash
#   # create a reference hash for individual string / integer correspondence
#   strings = ('0'..'9').to_a
#   reference = Hash.new
#   strings.each_with_index { |str, index| reference[str] = index }
#   reference
#   # binding.pry
# end


# def to_be_summed(int_array)
#   int_array.map.with_index do |int, index|
#     int * (10 ** (int_array.size - index - 1))
#   end
# end


# def string_to_integer(string)
#   reference = reference_hash
  
#   int_array = string.split('').map do |char|
#     reference[char]
#   end
  
#   to_be_summed(int_array).sum
# end


# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


# create a reference hash for individual string / integer correspondence
strings = ('0'..'9').to_a + ('a'..'f').to_a
DIGITS = Hash.new
strings.each_with_index { |str, index| DIGITS[str] = index }
# binding.pry

def hexadecimal_to_integer(string)
  hex_int = string.downcase.chars.map { |char| DIGITS[char] }
  
  # value = 0
  # hex_int.each { |int| value = 16 * value + int }
  # value
  
  hex_int.inject { |value, int| value * 16 + int }
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('C9') == 201