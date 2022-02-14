# age.rb

puts ">> What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age*12} months old."

# entering a non-numerica for the age will result in an error at the main stack attempts to convert the non-numberic into an integer
#or it will convert the string into a sum of the ascii character numerical values.

#or not? - actually there is not error. The program puts "You are 0 months old."