status = ['awake', 'tired'].sample

# def directive(a)
#   if a == 'awake'
#     return "Be productive!"
#   else 
#     return "Go to sleep!"
#   end
# end 

# puts directive(status)

directive = if status == 'awake'
              "Be productive!"
            else 
              "Go to sleep!"
            end

puts directive
