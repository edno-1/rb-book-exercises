# greeting a user
=begin
** problem
- write a program that will
- ask for user's name.
- the program will then
- greet the user.
- If the user writes "name!" then
- the computer yells back to user

** example / test cases
console should print =>
What is your name? Bob
Hello Bob.
# or
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

** data structures
input: string
intermed: string
output: string with input string interpolated

** algorithm
store user input as variable
print a certain reply with the user string interpolated based on user input

=end

#** code with intent

# puts "What is your name?"
# name = gets.chomp
# if name.end_with?('!')
#   name = name.chop
#   puts "HELLO #{name}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

#or

# puts "What is your name?"
# name = gets.chomp!
# if name.end_with?('!')
#   name = name.chop
#   puts "HELLO #{name}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

#or

puts "What is your name?"
name = gets.chomp
if name.end_with?('!')
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end 