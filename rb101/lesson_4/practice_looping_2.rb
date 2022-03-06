# # even or odd?

# # write a loop that prints numbers 1-5 and
# # whether the number is even or odd

# # expected output
# # 1 is odd!
# # 2 is even!
# # 3 is odd!
# # 4 is even!
# # 5 is odd!

# # given starting point
# # count = 1

# # loop do
# #   count += 1
# # end


# # if we want to use `loop`, we need a break condition
# # in this case, we want the loop to break after printing numbers 1-5
# # if we print one value per loop, this means after 5 loops.
# # the sample code keep track of the loops executed by iterating the `count` variable
# # if we print the value of `count` at each loop and `break` the loop after 5 iterations
# # we should succeed in printing number 1-5.
# # lets code, walk through the logic, then and test it out

# # count = 1

# # loop do
# #   puts count
# #   break if count == 5
# #   count += 1
# # end

# # success! now that we successfully print the numbers 1-5, we can move to the next req.
# # whether the number is even or odd
# # we have solved this problem previously using the Integer#odd?, Integer#even? methods
# # we can first evaluate if the value for count is odd
# # if the value is odd, we can print that it is odd.
# # if it is not odd, we can conclude that the value must be even, then print that it is even.

# # we have one conditional statement, and two potential outcomes
# # - sounds like we can use a ternary if

# # ternary if statement for even and odd evaluation/output

# count = 1

# loop do
#   puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
#   break if count == 5
#   count += 1
# end

# # main ideas: iteration by counter,
# # break based on count condition,
# # if/else logic to evaluate and print parity


# # catch the number
# # modify the given code so that the loop stops if number is equal to or between 0 and 10
# # - we must evaluate if variable `number` is equal to or between 0 and 10
# # - the loop must stop if the condition is satisfied

# # given:
# # loop do
# #   number = rand(100)
# #   puts number
# # end

# # to verify if variable `number` is equal to or between 0 and 10,
# # we can use comparison operator and an `and` boolean operator
# #  number >= 0 && number <= 10
# # we can also create a range and check if `number` is included in the range
# #  (0..10).include?(number)

# # to exit the loop when the condition is satified, we can use a `break` statement
# # with an if modifier
# # break if <conditon>

# #code with intent
# loop do
#   number = rand(100)
#   puts number
#   break if (number >= 0) && (number <= 10)
# end

# # walk through the logic, test.
# # another method we could have used is the Comparable#between? method
# # which takes two arguments and returns `true` if the caller's value
# # is between the two integers provided. 'false' otherwise.


# # conditional loop
# # write an `if/else` statement that prints "A" once if `true` and "B" once if `false`
# # if true
# #   puts "The loop was processed"
# #   break
# # else
# #   puts "The loop wasn't processed!"
# # end

# # initialized variable `process_the_loop` and assign it the return value of the invoked
# # method `sample` on an array [true, false]
# # process_the_loop = [true, false].sample

# # combine these two distinct statements to create a conditional loop
# process_the_loop = [true, false].sample
# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

# # just getting some practice with the `loop` syntax


# # get the sum
# # modify the following code so `"That's correct!"` is printed and
# # the loops stops when the user's answer equals `4`.
# # print `"Wrong answer. Try again!"` if the user's answer != 4
# # given:
# # loop do
# #   puts 'What does 2 + 2 equal?'
# #   answer = gets.chomp.to_i
# # end

# # print `"That's correct!"`
# #   puts "That's correct!"
# # if user answer == 4
# #   if answer == 4
# # loop stops
# #   break

# # else
# # puts `"Wrong answer. Try again!"`

# # put it all together and code with intent
# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
  
#   if answer == 4
#     puts "That's correct!"
#     break
#   end
  
#     puts "Wrong answer. Try again!"
# end

# # what is the main idea? perhaps breaking out of a loop using a conditional if statement...
# # also separating logically distinct portions of the code


# # insert numbers
# # add user input to `numbers` array
# # stop the loop
# # when array contains 5 numbers
# # given:

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
  
#   numbers << input # add user input to `numbers` array, can also use Array#push
  
#   break if numbers.size >= 5 # stop the loop when array contains 5 numbers
# end

# puts numbers

# # what is the purpose/main point of this exercise?
# # combining user input and loops?

# # code with intent, check logic, separate logically distinct parts, test code


# # empty the array
# # use `loop`
# # to remove
# # and print each name
# # stop loop
# # once `names` doesn't contain any more elements
# # given:
# # names = ['Sally', 'Joe', 'Lisa', 'Henry']

# # initialize `names` array with given array
# # initialize a loop
# # wihtin the loop remove names from the `names` array one at a time
# # print the removed `names` element as each one is removed
# # exit the loop once the `names` array is empty

# names = ['Sally', 'Joe', 'Lisa', 'Henry']
# loop do
#   name = names.shift
#   puts name
#   # p names
#   break if names.empty?
# end

# # variable scope, `names` array is accessible from within the `loop` block
# # walk through the logic, separate logically distinct parts, test cases as necessary
# # we can use the pop method to print names from last to first


# # stop counting
# # modify so that
# # it prints the current number and
# # stops iterating
# # when the current number equals 2
# # given:
# # 5.times do |index|
# #   # ...
# # end

# 5.times do |index|
#   puts index # prints the current number
#   break if index == 2 # stops iterating when the current number equals `2`
# end

# # interesting to learn that `Integer#times` counts from 0 to 4...
# # logic, separate, test

# 5.times do |index|
#   puts index
#   break if index == 4
# end

# 5.times do |index|
#   puts index
#   break if index < 7
# end

# # further exploration


# # only even
# # using the `next` statement
# # it only prints even numbers
# # given:
# number = 0

# until number == 10
#   number += 1
#   next if number.odd? # skips to next iteration if `number` is odd
#   # `next` placed between incrementation of `number` and `#puts` so that we can move towards the 
#   # `until` condition, preventing an infinite loop. if it was after '#puts' it woulc not change
#   # the loop flow at all.
#   puts number
# end

# # using `next` + conditional to control loop


# # first to five
# # use `next`
# # so that the loop interates until
# # either `number_a` or `number_b` equals 5
# # print `"5 was reached"` before breaking out
# # given:
# # number_a = 0
# # number_b = 0

# # loop do
# #   number_a += rand(2)
# #   number_b += rand(2)
# #   # p number_a
# #   # p number_b
# #   next unless number_a == 5 || number_b == 5 # `next` so loop iterates until either 'number_a' or 'number_b' equals 5
  
# #   puts "5 was reached!" # print `"5 was reached!"` before breaking out
# #   break
# # end

# # use an if/else statement instead
# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   p number_a
#   p number_b
  
#   if number_a == 5 || number_b == 5 # `next` so loop iterates until either 'number_a' or 'number_b' equals 5
#     puts "5 was reached!" # print `"5 was reached!"` before breaking out
#     break
#   end
  
# end


# # greeting
# # use a `while` loop
# # print `"hello!"`
# # twice
# # given:
# # def greeting
# #   puts 'Hello!'
# # end

# # number_of_greetings = 2

# # we want to call the `greeting` methods twice to print 'Hello!' twice
# # using a `while` loop

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end


