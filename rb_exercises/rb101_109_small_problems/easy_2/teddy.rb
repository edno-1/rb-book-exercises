# how old is teddy?
=begin
** problem
- build a program that
- randomly generates
- and prints
- Teddy's age
input: random integer
output: print integer
rules:
- generate a random number between 20 and 200 for age

** examples / test cases
=> Teddy is 69 years old!

** data structures
** scratchpad
** algorithm
generate random number between 20-200
print statement

=end

#** code with intent
def name?(name="Teddy")
  puts "Enter a name:"
  given_name = gets.chomp
  given_name == '' ? name : given_name
end

age = rand(20..200)
puts "#{name?} is #{age} years old!"