# working with blocks

# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end

# =begin
# # explanation from source text
# The `Array#each` method is being called on the multi-dimensional array [[1, 2], [3, 4]].
# Each inner array is passed to the block in turn and assigned to the local variable `arr`.
# The `Array#first` method is called on `arr` and returns the object at index `0` of the current array - 
# in this case the intgers `1` and `3`, respectively.
# The `puts` method then outputs a string representation of the integer.
# `puts` returns `nil` and, since this is the last evaluated statement within the block,
# the return value of the block is therefore `nil`.
# `each` doesn't do anything with this returned value though, and since the return value of `each` is the calling object -
# in this case the nested array `[[1, 2], [3, 4]]` - this is what is ultimately returned.
# =end

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end

# =begin
# ** questions to ask:
# - What is the type of action being performed (method call, block, conditional, etc)?
# - What is the object that action is being performed on?
# - What is the side-effect of that action (e.g. output or destructive action)?
# - What is the return value of that action?
# - Is the return value used by whatever instigated the action?

# # attempt with guidance from model
# The `Array#map` method is being called on the multi-dimensional array `[[1, 2], [3, 4]]`.
# Each inner array is passed to the block in turn and assigned to the local variable `arr`.
# The `Array#first` method is called on `arr` and returns the object at index `0` of the current array -
# in this case the integers `1` and `3`, respectively.
# The `puts` method then outputs a string representation of the integer and returns nil.
# The `Array#first` method is called again on `arr` and returns the object at index `0` of the current array, as before -
# in this case the integers `1` and `3`, respectively.
# Since `Array#first` is the last evaluated statement within the block,
# the return value of the block is therefore is also `1` and `3`, respectively.
# `map` transforms the passed inner arrays into the returned value of the blocks and adds them to a new array.
# Since the return value of `map` is the new arry of the transformed values - in this case, [1, 3] - this is what is
# ultimately returned.

# # revision from solution
# The last evaluated expression in the block is `arr.first` so the block's return value is the integer reutned by `arr.first`.
# The block's return value is then used by `map` to perform the transformation, replaceing the inner array with an integer.
# Finally, `map` returns a new array with two integers in it - in this case, [1, 3].


# # attempt
# In line 11, we invoke the method `map` on the nested array given.
# We pass a block to the `map` method which takes one pararmeter `arr`.
# We pass each subarray to the block as block local variable `arr`.
# Within the block, on line 12, we invoke the method `first` on the local variable, `arr`, which
#   returns the element at index `0` within the sub-array referenced by `arr`
# Then, we invoke the method `puts` and pass the return value of `arr.first`, which
#   outputs the return value. The method invocation returns `nil`.
# On line 13, we, again, invoke the method `first` on `arr` which returns
#   the element at index `0` within `arr`
# The block returns the return value of `arr.first` because it is the last evaluated expression
#   within the block
# The block's return value for each subarray is used to transformed the passed subarray and
#   each transformed object is mapped to a new array.
# The method invocation `map` returns the new array of transformed elements.
# =end

# my_arr = [[18, 7], [3, 12]].each do |arr|
#   arr.each do |num|
#     if num > 5
#       puts num
#     end
#   end
# end

# # attempt with guidance
# =begin
# In line 74, a local variable `my_arr` is initialized and assigned to the return of
# `Array#each` called on a multi-dimensional array `[[18. 7], [3, 12]].
# Each inner array of [[18, 7], [3, 12]] is passed to the `each` block in turn and
# assigned to local variable `arr`.
# Within the block, the `Array#each` method is called on `arr` and return the called object `arr`.
# Each sub-element of arr, integers in this case, is passed to the inner `each` block in turn and assigned to local variable `num`.
# The `puts` method outputs a string representation of the integer if the integer is greater than `5`. `puts` returns `nil` and,
# since this is the last evaluated statement within the `if` statement, the return value of the `if` statement is `nil` if the
# `if` statement is executed.
# Since the `if` statement is the last evaluated statement within the inner `each` block, the return value of the inner block is
# either `nil`...?
# `each` doesn't do anything with this returned value though.
# The last evaluated statement of the outer `each` block is the return value of the inner `each` method call, which is `arr`.
# `each` doesn't do naything with this returned value though.
# The outer `each` method call returns the calling object `[[18, 7], [3, 12]]` and `my_arr` is assigned to this array.

# output =>
# 18
# 7
# 12
# => [[18, 7], [3, 12]]
# =end

# [[1, 2], [3, 4]].map do |arr|
#   arr.map do |num|
#     num * 2
#   end
# end


# result = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
#   hash.any? do |key, value|
#     value[0] == key.to_s
#   end
# end
# # => [{ :c => "cat" }]

# # What would the return value be if we used `any?` instead of `all?`?
# p result


arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end


[[8,13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else
      item.size < 6
    end
  end
end


[[[1], [2], [3], [4]], [['a'], ['b'], ['c'], ['d']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end


[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

def remove_evens!(arr)
  cloned_arr = arr.dup
  cloned_arr.each do |num|
    # p arr
    if num % 2 == 0
      p arr
      arr.delete(num)
      p arr
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,4,6,8,4,9])