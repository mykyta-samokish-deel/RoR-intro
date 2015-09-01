# 1. Given a hash of family members, with keys as the title and
#     an array of names as the values, use Ruby's built-in select
#     method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family_members = []
family.select do |key|
  if (key == :sisters || key == :brothers)
    immediate_family_members << family[key]
  end
end
print "#{immediate_family_members.flatten}\n"

# 2. Look at Ruby's merge method. Notice that it has two versions. What
#     is the difference between merge and merge!? Write a program that
#     uses both and illustrate the differences.
## ANSWER --> "merge!" works immediately affecting itself, when "merge" doesn't
phone = { brand: "SONY" }
specification = { os: "Android" }
phone.merge(specification)
puts phone
phone.merge!(specification)
puts phone

# 3. Using some of Ruby's built-in Hash methods, write a program that
#     loops through a hash and prints all of the keys. Then write a
#     program that does the same thing except printing the values.
#     Finally, write a program that prints both.
hash = { a: 1, b: 2, c: 3 }
hash.each_key { |key| puts "#{key} " }
hash.each_value { |val| puts "#{val} " }
hash.each { |name, val| puts "#{name} #{val}" }

# 4. Given the following expression, how would you access the
#     name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# 5. What method could you use to find out if a Hash contains a
#     specific value in it? Write a program to demonstrate this use.
puts person.has_value?("Bob")

# 6. Write a program that prints out groups of words that are anagrams.
#     Anagrams are words that have the same exact letters in them but
#     in a different order.
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end
result.each do |key, val|
  puts "-----------"
  p val
end

# 7. What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
## ANSWER --> in my_hash key is a symbol, in my_hash2 x is String

# 8. If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

## ANSWER --> B
