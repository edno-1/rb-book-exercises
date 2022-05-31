# arithmetic integer

def prompt(message)
  puts "==> #{message}"
end

puts "==> Enter the first number:"
first = gets.chomp.to_i # use `to_f` for float instead of integer
puts "==> Enter the second number:"
second = gets.chomp.to_i
puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"

