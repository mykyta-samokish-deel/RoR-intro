# 1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers
## --> 1 \n 2 \n 2 \n 3

# 2. Describe the difference between ! and ? in Ruby.
#     And explain what would happen in the following
#     scenarios:
#      1. what is != and where should you use it?
#      2. put ! before something, like !user_name
#      3. put ! after something, like words.uniq!
#      4. put ? before something
#      5. put ? after something
#      6. put !! before something, like !!user_name
## --> "?" is an element of a method saying that it
#     returns a Boolean value. "!" is an element that
#     influences the value to which it is applied.
# !=    --> "not equals"
# "? :" --> ternary operator
# !!<some object> is used to turn any object into
#     their boolean equivalent
# !<some object> is used to turn any object into the
#     opposite of their boolean equivalent, just
#     like the above, but opposite

# 3. Replace the word "important" with "urgent"
#  in this string:
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub("important", "urgent")

# 4. The Ruby Array class has several methods
#  for removing items from the array. Two of
#  them have very similar names. Let's see how
#  they differ:
numbers = [1, 2, 3, 4, 5]
# What would the following return?
numbers.delete_at(1)
numbers.delete(1)
## --> Deleted values.
# 1) -> element at index 1 (numbers[1])
# 2) -> element whose value is 1

# 5. Programmatically determine if 42 lies
# between 10 and 100.
# hint: Use Ruby's range object in your solution.
puts (10..100).cover?(42)

# 6. Starting with the string:
famous_words = "and seven years ago..."
# show two different ways to put the
#   expected "Four score and " in front of it.
famous_words = "Four score and " + famous_words
famous_words = famous_words.prepend("Four score and ")

# 7. If we build an array like this:
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"],
#   ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
print "#{flintstones.flatten}\n"

# 8. Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only
#  two elements: Barney's name and Barney's number
print "#{flintstones.assoc("Barney")}\n"

# 9. Given the array below
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the
#  names are the keys and the values
#  are the positions in the array.
hash = {}
flintstones.each_with_index { |val, ind| hash[val] = ind }
puts hash
