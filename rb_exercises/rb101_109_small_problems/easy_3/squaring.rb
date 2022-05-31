# squaring an argument

def multiply(x, y)
  x * y
end

# def square(z)
#   multiply(z, z)
# end

# p square(5) == 25
# p square(-8) == 64

def power_to_the_n(value, n)
  case
    when n == 2
      multiply(value, value)
    when n == 1
      value
    when n == 0
      1
    when n < 0
       (1.0 / value) * power_to_the_n(value, n+1)
    else
      value * power_to_the_n(value, n-1)
  end
end

p power_to_the_n(10, 0)
p power_to_the_n(10, 1)
p power_to_the_n(10, 2)
p power_to_the_n(10, 3)
p power_to_the_n(10, -1)
p power_to_the_n(10, -2)
p power_to_the_n(5, -10)



