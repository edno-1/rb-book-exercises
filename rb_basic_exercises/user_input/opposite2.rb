# opposites2.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i !=0
end

def get_int
  puts ">> Please enter a positive or negative integer:"
  integer = gets.chomp
  return integer if valid_number?(integer)
  puts ">> Invalid input. Only non-zero integers are allowed."
  get_int
end 

integer1 = nil
integer2 = nil

loop do
  integer1 = get_int.to_i
  integer2 = get_int.to_i
  break if (integer1 * integer2).negative?
  puts ">> Sorry. One integer must be positive, one must be negative.\n >> Please start over"
end 

puts "#{integer1} + #{integer2} = #{integer1 + integer2}"




  