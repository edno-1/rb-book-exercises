# division.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end 

num = nil
den = nil

loop do
  puts ">> Please enter the numerator:"
  num = gets.chomp
  
  if valid_number?(num)
    num = num.to_i
    break
  end 
  
  puts ">> Invalid input. Only integers are allowed."
end

loop do 
  puts "Please enter the denominator:"
  den = gets.chomp
  
  if valid_number?(den) && den != '0'
    den = den.to_i
    break
  end 
  
  puts den == '0' ? "Invalid input. A denominator of 0 is not allowed" : 
  ">> Invalid input. Only integers are allowed."
end 

puts "#{num} / #{den} is #{num / den}"
