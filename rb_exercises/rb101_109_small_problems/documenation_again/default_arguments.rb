def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# perhaps an error because we only provide 3 arguments instead of 4

# actually the method prints [4, 5, 3, 6]