# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Questions to ask for clarification - very important
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindromes words case-sensitive?


# input: a string
# output: all substrings which are palindromes

# rules:
# Explicit reqs:
# - return only substrings which are palindromes...
# - palindrome words are case sensitive, aka "mom" is a palindrome, but 'Mom' is not.

# Implicit reqs:
# - Empty strings and strings without any palindrome substrings both return empty arrays
# - Palindrome substrings within larger palindrome substrings should be returned distinct substrings