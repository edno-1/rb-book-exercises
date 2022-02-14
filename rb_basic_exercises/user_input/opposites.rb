def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i !=0
end

integer1 = nil
integer2 = nil

loop do

loop do 
  puts ">> Please enter a positive or negative integer:"
  integer1 = gets.chomp

  if valid_number?(integer1)
    break
  else
    puts ">> Invalid input. Only non-zero integers are allowed."
  end 
end 

loop do 
  puts ">> Please enter a positive or negative integer:"
  integer2 = gets.chomp

  if valid_number?(integer2)
    break
  else
    puts ">> Invalid input. Only non-zero integers are allowed."
  end 
end 

integer1 = integer1.to_i
integer2 = integer2.to_i

if (integer1 * integer2).positive?
  puts ">> Sorry. One integer must be positive, one must be negative.\n >> Please start over"
else
  puts "#{integer1} + #{integer2} = #{integer1 + integer2}"
  break
end

end 

  