# when will I retire?
=begin

** problem
- build a program that
- displays
- when the user will retire and
- how many years she has to work till retirement
input: integers - age and retirement age
output: integers - current year, year of retirement, years until retirement
rules:
- calculate year of retirement
- years until retirement
- based on user's current age and retirement age
questions:
thoughts:

** examples / test cases:
output should be =>
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

** data structures:
input: integers
intermed: integers
output: integers

** algorithm
- retirement age - age will give us years until retimement
- current year + years until retirement will give us year of retirement
done

=end

#** code with intent

puts "What is your age? "
age = gets.to_i
puts "At what age would you like to retire? "
retire_age = gets.to_i
years_to_retire = retire_age - age
current_year = Time.now.year
retire_year = current_year + years_to_retire
puts "It's #{current_year}. You will retire in #{retire_year}.\n" +
  "You have only #{years_to_retire} years of work to go!"
