# weather.rb

sun = ['visible', 'hidden'].sample

print "The sun is so bright!\n" if sun == 'visible'
print "The clouds are blocking the sun!\n" unless sun == 'visible'
