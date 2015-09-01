# 1. Add two strings together that, when concatenated,
#     return your first and last name as your full name in one string.
puts "Mykyta" + " Samokish"

# 2. Use the modulo operator, division, or a combination
#     of both to take a 4 digit number and find
#       1) the thousands number
#       2) the hundreds
#       3) the tens and
#       4) and the ones.
thousands = 1337 / 1000
hundreds = 1337 % 1000 / 100
tens = 1337 % 100 / 10
ones = 1337 % 10

# 3. Write a program that uses a hash to store a list of
#     movie titles with the year they came out. Then use the puts
#     command to make your program print out the year of each
#     movie to the screen. The output for your program should
#     look something like this.
movies = { "Fight Club" => 1994,
           "The Dark Knight Returns" => 2005,
           "Wanted" => 2008,
           "A Brilliant Young Mind" => 2014,
           "The Snatch" => 1996 }
puts movies.values

# 4. Use the dates from the previous example and store them
#     in an array. Then make your program output the same
#     thing as exercise 3.
dates = movies.values
puts dates

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def fact(n)
  return 1 if n == 0
  return "err" if n < 0
  n < 3 ? n : n * fact(n-1)
end
puts fact(5), fact(6), fact(7), fact(8)

# 6. Write a program that calculates the squares of 3 float numbers
#     of your choosing and outputs the result to the screen.
puts 1.44 * 1.44, 2.88 * 2.88, 13.37 * 13.37

# What does the following error message tell you?
#   SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#     from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

#--------------------# ANSWER:
# As we see, this is a regular SyntaxError. We need to look at the code
#  at line 16, perhaps we put round bracket instead of curvy one.
