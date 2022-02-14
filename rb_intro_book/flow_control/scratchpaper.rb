# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# "FALSE" => nil

#snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end 
# "Did you get it right?" => nil

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# "ALRIGHT NOW!" => nil

(32 * 4) >= "129" #error - cannot compare different data types
847 == "874" #false
'847' < '846' #false - ruby will compare char by char from the left. 7 < 6 is false so it will be false
'847' > '846' #true
'847' > '8478' #false - if all chars are the same but one string is longer - longer string is greater
'847' < '8478' #true