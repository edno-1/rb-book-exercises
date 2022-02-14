# lsprint2.rb

number_of_lines = nil

loop do
  
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit)'
  number_of_lines = gets.to_i
  
  if number_of_lines >= 3
    number_of_lines.times { puts 'Launch School is the best!' }
    
  elsif number_of_lines == 0
    break
    
  else
    puts ">> That's not enough lines."
  end
  
end 

  