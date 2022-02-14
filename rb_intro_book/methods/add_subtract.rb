def add(a, b)
  a + b
end

def subtract(a, b)
  a - b 
end 

add(20, 45)
subtract(80, 10)

def multiply(num1, num2)
  num1 * num2
end 

p multiply(add(20, 45), subtract(80,10))
