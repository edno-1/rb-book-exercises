# list of digits

=begin
PROBLEM
- Write a method
- that takes one argument,
- a positive integer, and
- returns
- a list of the digits in the number
input: a positive integer
output: list of digits
questions: 

EXAMPLES / TEST CASES
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

DATA STRUCTURES
input: integer
intermed: ...
output: array

SCRATCHPAD
- might get be able to...
convert integer to string
split string into array of individual string elements
convert each element back into an integer

ALGORITHM

=end

def digit_list(integer)
  integer_string = integer.to_s
  string_array = integer_string.split('') # or use `String#char`
  string_array.map { |string| string.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


