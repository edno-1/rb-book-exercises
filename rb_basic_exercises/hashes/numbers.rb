# numbers

numbers = {
  high: 100,
  medium: 50,
  low: 10
}

puts a = numbers.each {|k,v| puts "A #{k} number is #{v}."}


p half_numbers = numbers.map { |k,v| v/2 }

p low_numbers = numbers.select! { |k,v| v < 25 }
p numbers

