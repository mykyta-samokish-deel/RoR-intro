# 1. Hashes are commonly found to be more
#  complex than the simple one we saw earlier:
# ages = { "Herman" => 32, "Lily" => 30,
#          "Grandpa" => 402, "Eddie" => 10 }
# It is often the case that each key points to
# another hash instead of a single value:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
# Figure out the total age of just the male
#  members of the family.
total = 0
munsters.each_value do |details|
  total += details["age"] if details["gender"] == "male"
end

# 2. One of the most frequently used real-world
#  string properties is that of "string
#  substitution", where we take a hard-coded
#  string and modify it with various parameters
#  from our program.
# Given this previously seen family hash,
#  print out the name, age and gender of
#  each family member:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# ...like this:
# (Name) is a (age) year old (male or female).
munsters.each { |name, details| puts "#{name} is a #{details["age"]} year old #{details["gender"]}" }

# 3. In an earlier exercise we saw that
#     depending on variables to be modified
#     by called methods can be tricky:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end
my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# We learned that when the above "coincidentally"
#  does what we think we wanted "depends"
#  upon what is going on inside the method.
# How can we refactor this exercise to make the
#  result easier to predict and easier for the
#  next programmer to maintain?
def expected_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end
my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = expected_method(my_string, my_array)
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 4. A quick glance at the docs for
#  the Ruby String class will have you scratching
#  your head over the absence of any
#  "word iterator" methods.
# Our natural inclination is to think of the words
#  in a sentence as a collection. We would like
#  to be able to operate on those words the same
#  way we operate on the elements of an array.
#  Where are the String#each_word and the
#  String#map_words methods?
# A common idiom used to solve this conundrum is to
#  use the String#split in conjunction with
#  Array#join methods to break our string up and
#  then put it back together again.
# Use this technique to break up the following string
#  and put it back together with the words in
#  reverse order:
sentence = "Humpty Dumpty sat on a wall."
puts sentence.slice(0, sentence.index(".")).split.reverse.join(" ") + "."

# 5. What is the output of the following code?
answer = 42
def mess_with_it(some_number)
  some_number += 8
end
new_answer = mess_with_it(answer)
p answer - 8
## --> 34

# 6. One day Spot was playing with the
#  Munster family's home computer and he wrote
#  a small program to mess with their demographic
#  data:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
# After writing this method, he typed the
#  following...and before Grandpa could stop
#  him, he hit the Enter key with his tail:
mess_with_demographics(munsters)
# Did the family's data get ransacked, or did the
#  mischief only mangle a local copy of the
#  original hash? (why?)
puts munsters
## --> He is screwed.

# 7. Method calls can take expressions as
#  arguments. Suppose we define a function
#  called rps as follows, which follows the classic
#  rules of rock-paper-scissors game, but with a
#  slight twist that it declares whatever hand
#  was used in the tie as the result of that tie.
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?
# ruby
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
## --> PAPER

# 8. Consider these two simple methods:
def foo(param = "no")
  "yes"
end
def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# What would be the output of this code:
# bar(foo)
## --> "NO"; the return value of foo is always "yes"
