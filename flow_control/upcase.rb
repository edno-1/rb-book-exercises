# upcase.rb

def up_case(string)
  string.length > 10 ? string.upcase : string
end 

puts up_case("hello world")
puts up_case("dance")