# sum of digits
=begin
** problem
- write a method that
- takes one argument,
- a positive integer, and
- returns the sum
- of its digits
input: integer
output: intger
rules:
- sum the digit(s) of the integer provided
questions:


** examples / test cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

** data structures
input: integer
intermed: string, array of strings, array of integers
output: integer

** scratchpad
- what does '_'.to_i return? # => 
- what does 123_456 return? # => 123456

** algorithm
integer to string
split string into array
convert array elements to integers
sum integers
return sum

=end

# ** code with intent

def sum(num)
  num.to_s
    .chars
    .map { |string| string.to_i }
    .reduce(:+)
  # num.to_s.chars.map(&:to_i).reduce(:+)
  # num.to_s.split('').map { |string| string.to_i }.reduce(:+)
  # num.digits.sum # returns an array of integers representing the `base`-radix digits of self
  # the first element of the array representing the least significant digit
  # num.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45