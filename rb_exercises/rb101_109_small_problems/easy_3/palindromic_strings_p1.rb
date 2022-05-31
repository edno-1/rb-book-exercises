# # palindromic strings part 1

# def palindrome?(string)
#   reversed = ''
#   string.each_char { |char| reversed << char }
#   string == reversed
# end

# #or use string == string.reversed

# p palindrome?('madam madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true


# def arr_palindrome?(arr)
#   arr == arr.reverse
# end

# p arr_palindrome?([1, 2, 3, 2, 1]) == true


def both_palindrome?(arr_or_string)
  arr_or_string == arr_or_string.reverse
end

p both_palindrome?('madam madam') == true
p both_palindrome?('Madam') == false          # (case matters)
p both_palindrome?("madam i'm adam") == false # (all characters matter)
p both_palindrome?('356653') == true
p both_palindrome?([1, 2, 3, 2, 1]) == true
