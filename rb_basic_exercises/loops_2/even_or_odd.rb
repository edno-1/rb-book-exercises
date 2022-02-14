count = 1

loop do
  if count.odd?
    puts "#{count} is odd!" 
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

count = 1

loop do
  puts count.odd? ? "#{count} is odd" : "#{count} is even"
  count += 1
  break if count > 5
end