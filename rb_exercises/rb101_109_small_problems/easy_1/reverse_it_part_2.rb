# reverse it part 2
=begin
split the string into an array
iterate through each string element
  reverse the string if longer than 4 chars
  store each string in original array
rejoin array elements into string
return string
=end

def reverse_words(string)
  string.split.map! { |element| element.size > 4 ? element.reverse : element }.join(' ')
end

# test
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS