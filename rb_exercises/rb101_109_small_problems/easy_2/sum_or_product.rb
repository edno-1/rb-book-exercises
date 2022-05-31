# sum or product of consecutive integers
=begin
** problem
- write a program that
- asks the user to enter
- an integer
- greater than 0, then
- asks if the user want to
- determine the sum
- or product of
- all numbers between 1 and the entered integer

** examples / test cases
output as follows =>
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

** data structures
input: integer, string
intermed: ...
output: string, integers

** algo
user inputs integer > 0
create a collection of integers from 1 to user input integer, inclusive
user inputs 's' or 'p'
if sum, sum the integers in collection
if product, multiply the integer in collection
return final value

=end

# ** code with intent

def calc_sum(integer)
  # sum = 0
  # 1.upto(integer) { |num| sum += integer }
  # sum
  (1..integer).inject(:+)
end

def calc_product(integer)
  # prod = 1
  # 1.upto(integer) { |num| prod *= num }
  # prod
  (1..integer).inject(:*)
end

integer = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
  break if integer > 0
  puts "Invalid entry. Please enter an integer greater than 0."
end

# range = (1..integer).to_a
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
s_or_p = gets.chomp

case s_or_p
  when 's'
    sum = calc_sum(integer)
    puts "The sum of the integers between 1 and #{integer} is #{sum}"
  when 'p'
    product = calc_product(integer)
    puts "The product of the integers between 1 and #{integer} is #{product}"
  else
    puts "Unknown operation."
end