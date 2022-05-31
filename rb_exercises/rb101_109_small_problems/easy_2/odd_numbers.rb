# odd numbers
=begin
** problem
- print all odd numbers
- from `1` to `99`,
- inclusive,
- to the console,
- with each number on a separate line

** examples / test cases
output =>
1
3
5
...
99

** data structures
input: range or an array
intermed:
output: print numbers

** algo
- we could create a range
- select odd numbers of range and save in carrier collection
- print elements of collection

=end

#** code with intent

# puts (1..99).select { |num| num.odd? }

# using `Integer#upto`

1.upto(99) { |num| p num if num.odd? }