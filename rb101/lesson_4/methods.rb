# # classic loop
# numbers = [1, 2, 3]
# counter = 0

# loop do
#   break if counter == numbers.size
#   puts numbers[counter]
#   counter += 1
# end

# # using the `each` method which is functionally equivalent to loop
# [1, 2, 3].each do |num|
#   puts num
# end
# # calling `each` on an array

# # let's try calling each on a hash
# hash = { a: 1, b: 2, c: 3}

# hash.each do |key, value|
#   puts "The key is #{key} and the value is #{value}"
# end

# # `each` returns the original collection the method was called on
# # what happens if we invoke the `each` method/call the `each` method on a collection within a method definition
# def a_method
#   [1, 2, 3].each do |num|
#     puts num * 2
#   end
# end

# p a_method
# # the last expression in the method is `[1, 2, 3].each` which has a return value of [1, 2, 3]
# # so the return value of method `a_method` is the last expression within the method so it also is [1, 2, 3]


# # what if we added a statement after the `each` method expression?
# def a_method
#   [1, 2, 3].each do |num|
#     puts num * 2
#   end
  
#   puts 'hi'
# end

# p a_method # => return value has become `nil`, which makes sense because the last expression within the method is now `puts`


# `select`

