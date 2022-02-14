# time_of_day.rb

daylight = [true, false].sample

def time_of_day(boolean)
  puts boolean ? "It's daytime!" : "It's nighttime!"
end 

time_of_day(daylight)

daylight = [true, false].sample

def time_of_day(boolean)
  boolean ? puts("It's daytime!") : puts("It's nighttime!")
end 

time_of_day(daylight)