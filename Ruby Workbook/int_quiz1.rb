# 1. Let's do some "ASCII Art" (a stone-age
#  form of nerd artwork from back in the days
#  before computers had video screens).
# For this exercise, write a one-line
# program that creates the following
# output 10 times:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
10.times { |i| puts "#{" " * i}The Flintstones Rock!" }

# 2. Create a hash that expresses the frequency
# with which each letter occurs in this string:
statement = "The Flintstones Rock"

hash = {}
letters = ("A".."Z").to_a + ("a".."z").to_a
letters.each do |letter|
  frequency = statement.count(letter)
  hash[letter] = frequency if frequency > 0
end
puts hash

# 3. The result of the following statement
# will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways
#  to fix this?
puts "the value of 40 + 2 is #{40 + 2}"
# OR
puts "the value of 40 + 2 is " + (40 + 2).to_s

# 4. What happens when we modify an array while
#  we are iterating over it? What would be output
#  by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
## --> 1) [1, 3]
# =>   2) [1, 2]

# 5. Alan wrote the following method, which
# was intended to show all of the factors of
#  the input number:
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
# Alyssa noticed that this will fail if you
#   call this with an input of 0 or a negative
#   number and asked Alan to change the loop.
#   How can you change the loop construct
#   (instead of using begin/end/until) to make
#   this work? Note that we're not looking to
#   find the factors for 0 or negative
#   numbers, but we just want to handle it
#   gracefully instead of raising an
#   exception or going into an infinite loop.
## --> V
# while divident > 0 do
#   divisors << number / divident if number % divident == 0
#   divident -= 1
# end

# 7. Alyssa asked Ben to write up a basic implementation
#  of a Fibonacci calculator, A user passes in two
#  numbers, and the calculator will keep computing
#  the sequence until some limit is reached.
# Ben coded up this implementation but complained
#  that as soon as he ran it, he got an error.
#  Something about the limit variable. What's
#  wrong with the code?
def fib(first_num, second_num)
  limit = 15 # <-------------
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
# How would you fix this so that it works?
## --> I'd put "limit" object inside our function.

# 8. In another example we used some built-in
#  string methods to change the case of a
#  string. A notably missing method is something
#  provided in Rails, but not in Ruby
#  itself...titleize! This method in Ruby on Rails
#  creates a string that has each word capitalized
#  as it would be in a title.
# Write your own version of the rails titleize
#  implementation.
text = "Some random text"
puts text.split.map { |e| e.capitalize }.join(' ')


# 9. Given the munsters hash below
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# Modify the hash such that each member of
#  the Munster family has an additional
#  "age_group" key that has one of three
#  values describing the age group the family
#  member is in (kid, adult, or senior). Your
#  solution should produce the hash below
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
# Note: a kid is in the age range 0 - 17,
#  an adult is in the range 18 - 64 and
#  a senior is aged 65+.
# hint: try using a case statement along with
# Ruby Range objects in your solution
munsters.each do |name, details|
  case details["age"]
  when (0...18)
    details["age_group"] = "kid"
  when (18...65)
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
puts munsters
