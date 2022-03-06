# # q1
# 10.times { |i| puts (" "*i) + "The Flintstones Rock!" }

# # q2
# puts "the value of 40 + 2 is " + (40 + 2).to_s
# #or
# puts "the value of 40 + 2 is #{40 + 2}"

# # q3
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end  
#   factors
# end

# p factors(0)
# p factors(10)
# p factors(-20)

# # q4
# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# # the difference is that the rolling_buffer1 method mutates the object referenced by
# # the variable buffer, whereas the rolling_buffer2 method does not mutate the object
# # referenced by the input_array variable. It instead instantiates a new variable buffer
# # which is assigned the input_array + [new_element]


# q5
# we instantiate a variable limit and assign it the integer value 15

# we define a method fib with takes two parameters first_num and second_num
    # we instantiate a while loop with the condition that first_name + second_num < the value of the variable limit.
    # ** the issue is that we have not instantiated the variable limit within the scope of the fib method definition
    # and we have not passed in an arguement to the assigned to the parameter limit. we cannot access the variable
    # limit instantiated outside the scope of the method fib definition unless it is explicitly passed in as an argument
    # moving on, we instantiate a variable sum which is assigned the value of first_num + second_num
    # we reassign the value of second_num to the variable first_num
    # we reassign the value of sum to the variable second_num
    # end of while loop
  # return the value of variable sum
# end of method definition
  
# we instantiate a variable result and assign it the return value of method fib with
# the passed integer values 0 and 1 as arguments
# finally we puts the string "result is #{result}" with the variable result interpolated'
# into the string

# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#   sum = first_num + second_num
#   first_num = second_num
#   second_num = sum
#   end
#   sum
# end

# result = fib(0,1,limit)
# puts "result is #{result}"


# # q6
# answer = 42
# p answer.object_id

# def mess_with_it(some_number)
#   some_number += 8
# end

# p new_answer = mess_with_it(answer)


# # q7
# # No, the family's data does not get mutated in any way.
# # The method mess_with_demographics takes the munster hash as an argument
# # The method values is called by the demo_hash with points at the munster hash location
# # but the values method does not mutating method. It simply returns a new array composed
# # of the values within the object referred to by demo_hash. The each method called by
# # the demo_hash.values array also does not mutate the caller and it return the original array
# # demo_hash.values array. So no. No mutation of the original hash, munsters.
# #^ incorrect?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
#   p demo
# end

# p munsters  
# mess_with_demographics(munsters)
# p munsters

# # two mistakes on my end - first, I forogt that Hash#[] is a mutating method.
# # second, I didn't realize that demo_hash.values was pointing at the values within
# # the demo_hash reference value which is the munsters reference value so they
# # are pointing at the same location. I thought Hash#values copied the
# # values into a new and separate array.

# # q8

# def rps(fist1, fist2)
#   if fist1 == 'rock'
#     (fist2 == 'paper') ? 'paper' : 'rock'
#   elsif fist1 == 'paper'
#     (fist2 == 'scissors') ? 'scissors' : 'paper'
#   else
#     (fist2 == 'scissors') ? 'rock' : 'scissors'
#   end
# end


# puts rps(rps(rps('rock', 'paper'), rps('rock', 'scissors')), 'rock')

# # is this a similistic example of recursion - it maybe.

# q9

def foo(param = 'no')
  'yes'
end

def bar(param = 'no')
  (param == 'no') ? 'yes' : 'no'
end

p bar(foo)

# we call method bar and pass in method foo as the argument. First question, is it possible to pass in a method as the argument to another method? I guess yes.
# foo is not fed an argument, so it should default to param = 'no'. However, this doesn't affect the return value which is always 'yes'.
# so bar(foo) is the same as bar('yes')
# the ternary if operator within the bar method checks the value of the object located at the reference point variable param is refering to, which string 'yes'
# so (param == 'no') evaluates as false, and so it returns 'no'


