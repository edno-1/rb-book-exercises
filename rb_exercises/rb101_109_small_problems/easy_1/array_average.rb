# array average
=begin

** problem
- write a method
- takes one argument,
- an array
- containing integers, and
- returns the average
- of all numbers in the array

input: array of integers
output: integer (average value of integers in given array)
rules:
- array will never be empty
- numbers will always be positive integers
- result should be an integer
questions:
- what happens if integer division yields a remainder? is the return value truncated?
  - let's check irb
  - yes, the decimal portion is removed

** examples / test cases
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

** data structures
input: array
intermed: integer
output: integer

** scratchpad
- we can sum integers in the array
- count the number of array elements
- divide the sum by the number of elements
- but the answer needs to be an integer not a float...

** algorithm
- see scratchpad

=end

def average(num_array)
  num_array.sum.to_f / num_array.count
end

#alternative
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number } # `reduce` also known as `inject`
  # numbers.reduce(:+) - combines all the elements of the given array by
  # applying a binary operation
  sum.to_f / numbers.count
end
  
  

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])


