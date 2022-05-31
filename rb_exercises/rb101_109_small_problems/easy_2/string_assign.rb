# string assignment
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# expected output
# =>
# BOB
# BOB

# In line 1, we initialize a local variable `name` and assign it to the `String` object 'Bob'
# In line 2, we initialize a local variable `save_name` and assign it to the `String` object referenced by `name`.
# In line 3, we invoke the destructive method `upcase!` on the object reference by `name`, which mutates the `String` object to `"BOB"` and returns `"BOB"`.
# In line 4, we parallel pass arguments `name` and `save_name` to the method invocation `puts`, which prints
# BOB
# BOB
# and returns `nil`

# `name` and `save_name` have the same object reference value.
# If we mutate the object using either of these variables, we mutate the same object.