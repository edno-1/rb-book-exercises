# what is the difference between File::path and File#path?

# File::path - class method is called on the class File
# - returns the string representation of the path
# File.path("/dev/null") #=> "/dev/null"

# File#path is an method called on instances of objects of the class File
# - returns the pathname used to create file as a string
# File.new("testfile").path #=> "testfile"

