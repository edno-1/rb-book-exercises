puts "Enter a number between 1 and 100: "
num = gets.chomp.to_i

answer = case
  when num <= 50 && num >= 1
    "Between 1 - 50"
  when num <= 100 && num >= 51
    "Between 51 - 100"
  else
    "Not a valid number"
end 

puts answer
