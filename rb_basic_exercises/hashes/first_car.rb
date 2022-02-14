puts car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}

car[:year] = 2003
puts car

car.delete(:mileage)
puts car

puts car[:color]
