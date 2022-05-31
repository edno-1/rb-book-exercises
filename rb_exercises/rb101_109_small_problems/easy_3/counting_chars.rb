# counting the number of characters

puts "Please write word or multiple words:"
string = gets.chomp
p string.split.join.size
puts "There are #{string.split.join.size} characters in \"#{string}\"."

# or
# numbers_of_characters = string.delete(' ').size

