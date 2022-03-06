# odd.rb

# write a method
# takes one integer argument - postive, negative, or zero
# returns true if
# number's absolute value is odd

# assume: argument is a valid integer value
# restrictions: cannot use `#odd?` or `#even?`

# keep in mind:
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true


# first off, how do we get the absolute value of an integer
# Integer.abs method if invoked returns the abs value of passed integer
# int = int.abs

# second, once the absolute value is obtained, how do we determine if it is odd
# (int % 2) == 1 # will return a boolean true if int is odd and false if int is 0 or even.

def is_odd?(int)
  int = int.abs
  (int % 2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# modulo operator always returns a non-negative result IF the number on the right if positive.
# remainder operators return negative results if the number on the left if negative.
# note: module and remainder operation is not the same though similar
# Ruby usins % as the modulo operator but in some languages % is the remainder operator

def odd?(int)
  int.remainder(2) != 0 # x.remainder(y) = x-y*(x/y).truncate
end

puts odd?(2)    # => false
puts odd?(5)    # => true
puts odd?(-17)  # => true
puts odd?(-8)   # => false
puts odd?(0)    # => false
puts odd?(7)    # => true