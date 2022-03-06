a = %w(a b c d e)
#puts a.fetch(7)
# => IndexError expection because `index` 7 lies outside of the array bounds

puts a.fetch(7, 'beats me')
# => defaults to 'beats me' becuase `index` 7 lies outside of the array bounds

puts a.fetch(7) { |index| index**2 }
# => 49 - the block is executed because the `index` referenced is invalid (aka outside the array bounds)

puts a.fetch('index', 'beats me')