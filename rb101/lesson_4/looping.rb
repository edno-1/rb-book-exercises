# looping.rb

arr = [1, 2, 3, 4, 5]
arr[0] += 1
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1
p arr

arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

p arr

# Kernel#loop is an instance method for the module Kernel

loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

# if statement != if modifier

# do/while loop - the code is guaranteed to execute at least once

a = 0
# loop do
#   break if a == 0
#   b = 2
# end

# p a
# p b

if false
  b = 2
end

p a
p b

# looping - a loop, a counter, a way to retrieve the current value, and a way to exit the loop
# it can be tempting to go method hunting for a method to iterate over a collection but with
# the basics of looping, you can write your own code to iterate over a collection.
# Methods are useful but not a crutch