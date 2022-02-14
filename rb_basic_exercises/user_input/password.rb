# password.rb

 Password = "SecreT"

loop do
  puts ">> Please enter your password:"
  password = gets.chomp
  break if password == Password
  puts "Invalid password!"
end

puts "Welcome!"
