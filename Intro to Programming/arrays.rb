# 1. Below we have given you an array and a number.
#     Write a program that checks to see if the number
#     appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number) then puts "It is." end

# 2. What will the following programs return? What is value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
## ANSWER --> it delets the second element from the first nested array.
#           [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 3. How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0]

# 4. What does each method return in the following example?
#
# arr = [15, 7, 18, 5, 12, 8, 5, 1]
# 1. arr.index(5)
# 2. arr.index[5]
# 3. arr[5]
## ANSWERS --> 3; NoMethodError; 8

# 5. What is the value of a, b, and c in the following program?
# string = "Welcome to Tealeaf Academy!"
# a = string[6]
# b = string[11]
# c = string[19]
# # ANSWER --> e; T; A

# 6. You run the following code...
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?
## ANSWER --> The indeces of array can only be Integers. Instead of
#           'margaret', try index of mergaret!

# 7. Write a program that iterates over an array and builds a
#     new array that is the result of incrementing each value
#     in the original array by a value of 2. You should have
#     two arrays at the end of this program, The original array
#     and the new array you've created. Print both arrays to
#     the screen using the p method instead of puts.
arr1 = [1,2,3,4,5,6,7,8]
arr2 = []

arr1.each { |el| arr2 << el + 2 }
p arr1, arr2
