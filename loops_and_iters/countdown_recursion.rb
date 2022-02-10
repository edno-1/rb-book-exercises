def countdown_recursion(num)
  puts num
  return if num == 0
  countdown_recursion(num - 1) if num > 0
  countdown_recursion(num + 1) if num < 0
end 

countdown_recursion(5)
countdown_recursion(20)
countdown_recursion(-5)
