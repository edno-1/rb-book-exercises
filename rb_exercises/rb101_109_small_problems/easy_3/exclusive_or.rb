# exclusive or
=begin
- write a function named `xor` that
- takes two arguments, and
- returns `true` if exactly one of its arguments is truthy
- `false` otherwise
=end

def xor?(condition_1, condition_2)
  if (condition_1 == true && condition_2 == false) ||
      (condition_1 == false && condition_2 == true)
    true
  else
    false
  end
end

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

# def xor?(value1, value2)
#   !!((value1 && !value2) || (value2 && !value1))
# end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
