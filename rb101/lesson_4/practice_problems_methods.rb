# problem 1
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# # the `select` method invoked on the given array takes a block. The block takes argument `num`, check if `num` is greater than 5, then returns the string 'hi'
# # 'hi' is a truthy value and it is the last evaluated expression in the block so the block as a whole returns 'hi' which evaluates as truthy. The actual element value
# # represented by `num` does not affect the return value of the block. The `select` method returns a new collection, [1, 2, 3].


# problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# in this case where `Enumerable#count` is invoked and a block is given, the block is called with each element and `#count` returns the number of elements
# for which the block returns a truthy value. It ultimately returns an integer
# basically, if the block evaluates as truthy for the current iteration, it keep track. It keeps track of the total number of elements for which the block
# evaluates as truthy and `#count` returns the final total
# which in this case, is 2
# we can find this information on the `#count` method by searching the Ruby documentation under the `Enumerable` module, `#count` - actually
# `count` is listed as a method under `Array` as well...
# `count` treats the block return value in a similar way to `select` - `count` considers the truthiness of the block's return value

# we invoke a method ON an object
# we pass it (method) a block that takes one paramter `str`

# problem 3
[1, 2, 3].reject do |num|
  puts num
end
# first question, what does `reject` do? Is it listed as a method under `Array`? I'm guessing it acts similarly to `select` in that
# if the block evaluates at falsy, the current element is stored in an array. if the block evaluates at truthy, the current element is
# rejected and NOT added to the storage array. After iterating through the entire array, the storage array is returned... let's check
# acutally.. according to the doc, `reject` returns an new Array whose elements are all those from `self` for which the block returns `false` or `nil`
# basically, if the block evaluates as falsy for the current element, it stores the value and returns all the rejected values in a new Array
# bascially, anything that `select` does not add to the new Array it returns would be in this `reject` array.
# in which case, this code should return a new Array [1, 2, 3] because the block evaluates at `nil` regardless of `num` because the last expression
# `puts` always returns `nil`
# => [1, 2, 3]
# falsy is spelled falsey

# problem 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
=begin
What is the return value of `each_with_object` in the following code? Why?
{ 'a' => 'ant' , 'b' => 'bear', 'c' => 'cat' }
=end

# problem 5
hash = { a: 'ant', b: 'bear' }
hash.shift
=begin
`shift` would mutate it by removing the first element from the front
The `shift` method is invoked on the `hash` object. It mutates the `hash` by removing the first `hash` entry
and returning it.
=> [:a, 'ant'] or { :a => 'ant' }
If we access `hash` after the method invocation, it should return as { :b => 'bear' }.
=end

# problem 6
['ant', 'bear', 'caterpillar'].pop.size
=begin
What is the return value of the following statement? Why?
=> 11
we invoke the `pop` method on the given Array object. This returns a string 'caterpillar'.
we invoke the `size` method on the returned string 'caterpillar'. This returns a `Integer` object `11`.
The main point of this exercise is method chaining.
=end

# problem 7
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
=begin
What is the block's return value in the following code? How is it determined? also, what is the return value of `any`? in this code
and what does it output?
Short-circuiting - does it play a role in this example?
=end

# problem 8
arr = [1, 2, 3, 4, 5]
arr.take(2)
arr
=begin
How does `take` work? Is it destructive? How can we find out?
We can verify the nature of `take` using the Ruby docs.
According to the docs, `take` does not modify `self` so it is not destructive.
It returns a new Array.
The new Array object contains the first `n` elements of `self` where `self.take(n)`
I expect this code to return => [1, 2]
=end

# problem 9
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
=begin
the return value should be a collection with the same number of elements as `self` => [nil, 'bear']
for the first element of the hash, the block returns 'nil' because the `if` expression does not get evaluated because the condition `value.size > 3` evaluates as false.
for the second element of the hash, the block returns `value` because the `if` expression evaluates to `value` and the `if` statement is the last expression
in the block.
the block return value `nil` is added to the new collection
the block return value `value` is added to the new collection
The new collection is an array with the same number of elements as the original collection
`map` always returns an array
=end

# problem 10
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
What is the return value of the following code? Why?
  The return value should be a new collection, an array [1, nil, nil].
  The `if` statement evaluates to `nil` for `num > 1`, aka `num == 2` and `num == 3`, because `put` always returns `nil`.
  For `num == 1`, `if` statements evaluates to `num` which is `1`.
  The block returns `1`, `nil`, and `nil` respectively and `map` adds them to a new collection. `map` returns the new collection `[1, nil, nil]`
  Also it outputs `2` and `3` individually on separate lines.
=end
