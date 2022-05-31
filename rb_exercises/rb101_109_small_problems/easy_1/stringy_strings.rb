# stringy strings
=begin
  take the integer
  invoke `#times`
  pass a block to the integer
  within the block, if the index is even, add 1 to a string, if odd add 0
  return string
=end

def stringy(integer, first = 1)
  one_or_zero = ''
  case first
    when 1
    integer.times { |index| index.even? ? one_or_zero << '1' : one_or_zero << '0' }
    when 0
    integer.times { |index| index.odd? ? one_or_zero << '1' : one_or_zero << '0' }
  end
  one_or_zero
end

puts stringy(6, 0) #== '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'