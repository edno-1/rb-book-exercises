array = [1,2,3]

p(array.map) do |num|
  num + 1
end 

p(array.map { |num| num + 1})


mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }

mapped_and_tapped = mapped_array.tap { |value| p 'hello' }

p mapped_and_tapped

(1..10)                 .tap { |x| p x }
.to_a                   .tap { |x| p x }
.select { |x| x.even? } .tap { |x| p x }
.map {|x| x*x }         .tap { |x| p x }