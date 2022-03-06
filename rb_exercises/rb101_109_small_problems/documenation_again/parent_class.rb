s = 'abc'
puts s.public_methods.inspect
# outputs an array of String public methods and returns nil

s.public_methods.inspect
# returns an array of String public methods as a string

s.public_methods
# returns an array of String public methods

# in order to print just the public methods that are defined or overridden by the String class,
# aka list of methods that excludes all members that are only defined in Object, BasicObject, and Kernel module

b = (Object.public_methods + BasicObject.public_methods + Kernel.public_methods)
puts "excluded list: \n" + (s.public_methods - b).inspect
puts "more elegant: \n" + s.public_methods(false).inspect
puts "is there a difference? \n" + ((s.public_methods - b) - s.public_methods(false)).inspect