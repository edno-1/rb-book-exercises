def third_instance(string, given_char)
  count = 0
  location = nil
  
  string.chars.each_with_index do |char, index|
    count += 1 if char == given_char
    return location = index if count == 3
  end
  
  location
end

p third_instance('axbxcdxex','x') == 6
p third_instance('axbxcde','x') == nil
