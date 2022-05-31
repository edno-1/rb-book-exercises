# reverse it part 1
=begin
** understand the problem **
input: string of words
output: string of words in reverse order
rules:
- words in the string must be reversed and output as a string
- casing is preserved
- any number of spaces results in ''
questions:
- if I call `String#split` on a string of spaces, what is the return value?
  => []
  then if you invoke `Array#join`, return value is ''.
thoughts:

** examples / test cases **
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

** data structures **

** scratchpad **

** algorithm **
initialize a method definiton
split the string into an array
iterate through the array
  at each iteration, add the current element to the front of a carrier array
  complete iteration
rejoin the elements of the carrier array into a string
return the string
=end

# code with intent
def reverse_sentence(string)
  carrier = string.split.each_with_object([]) do |element, arr|
    arr.unshift(element)
  end
  carrier.join(' ')
end

# can also invoke `Array#reverse` to reverse elements of array instead of doing it manually

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''