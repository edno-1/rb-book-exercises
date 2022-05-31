# mutation
=begin
** problem
- what will the following code print?
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# if we mutate the elements of `array1`, will the mutation affect the elements in `array2`?
# this is a great question...
# when we append `value` to `array2` in the block of the first `each` invocation,
# does the appended element in `array2` have the same object reference value as the corresponding element in `array1`?

# p array2[0].object_id == array1[0].object_id

# expected output
=begin

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

=end

# the answer lies in the fact that the first `each` loop simply
# COPIES a bunch of references from `array1` to `array2`.

# if we assume that values are copied instead of reference values, we might expect
# array2 to be unchanged when we mutate the values of array1