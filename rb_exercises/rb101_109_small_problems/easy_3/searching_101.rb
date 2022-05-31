# searching 101

# write a program that
# solicits 6 numbers from the user, then
# prints a message that describes
# whether or not the 6th number appears amongst the first 5 numbers

which_number = %w(1st 2nd 3rd 4th 5th last)

array = which_number.each_with_object([]) do |order, arr|
  puts "==> Enter the #{order} number:"
  user_input = gets.chomp.to_i
  arr << user_input
end

last_num = array.pop

puts array.include?(last_num) ?
  "The number #{last_num} appears in #{array}." : 
  "The number #{last_num} does not appear in #{array}"
