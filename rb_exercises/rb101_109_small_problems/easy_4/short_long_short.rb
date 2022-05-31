# short long short

def short_long_short(string_1, string_2)
    if string_1.size > string_2.size
      short = string_2
      long = string_1
    else
      short = string_1
      long = string_2
    end
    short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"