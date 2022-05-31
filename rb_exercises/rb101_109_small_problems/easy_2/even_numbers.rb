# even numbers
=begin
** problem
- print all even numbers
- from `1` to `99`,
- inclusive,
- to the console,
- with each number on a separate line

** examples / test cases
output =>
2
4
6
...
98

** data structures
input: range or an array
intermed:
output: print numbers

** algo
- we could create a range
- select even numbers of range and save in carrier collection
- print elements of collection

=end

#** code with intent

# puts (1..99).select { |num| num.even? }

#or

1.upto(99) { |num| p num if num.even? }