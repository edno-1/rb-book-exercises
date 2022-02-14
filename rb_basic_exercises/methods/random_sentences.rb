def name(names)
  names.sample
end 

def activity(activities)
  activities.sample
end 

def sentences(a, b)
  puts "#{a} went #{b} today!"
end 

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentences(name(names), activity(activities))