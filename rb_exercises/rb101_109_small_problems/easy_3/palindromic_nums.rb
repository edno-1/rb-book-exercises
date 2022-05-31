# palindromic numbers

def palindrome?(object)
  object == object.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?('00%o' % 001232100) == true
p palindromic_number?(22) == true
p palindromic_number?(5) == true