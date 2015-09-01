# 1. Write a program called name.rb that asks the
#     user to type in their name and then prints out
#     a greeting message with their name included.
print "-What's your first name?\n-"
first_name = gets.chomp

# ---------------------
# 3. Add another section onto name.rb that prints the
#     name of the user 10 times. You must do this without
#     explicitly writing the puts method 10 times in a row.
#     Hint: you can use the times method to do something repeatedly.
10.times { puts first_name }

# ---------------------
# 4. Modify name.rb again so that it first asks the user for their
#     first name, saves it into a variable, and then does the same
#     for the last name. Then outputs their full name all at once.
print "-Last name?\n-"
last_name = gets.chomp
puts "#{first_name} #{last_name}"


# 2. Write a program called age.rb that asks a user how old they
#     are and then tells them how old they will be in 10, 20, 30
#     and 40 years. Below is the output for someone 20 years old.
print "-How old are you?\n-"
age = gets.chomp
[10,20,30,40].each { |i| puts "In #{i} years you will be:\n#{age.to_i + i}" }

# 5. Look at the following programs...
#
# x = 0                       y = 0
# 3.times do                  3.times do
#   x += 1        and...        y += 1
# end                           x = y
# puts x                      end
#                             puts x
#
# What does x print to the screen in each case?
#  Do they both give errors? Are the errors different? Why?
## ANSWER
# 1) There is not mistakes in the first one, the result printed is 3.
# 2) We did not declare a variable 'x' in our program before the loop, we
#     we are having a 'NameError: undefined local variable'.

# 6. What does the following error message tell you?

# NameError: undefined local variable or method `shoes' for main:Object
#   from (irb):3
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
## ANSWER
# That object 'shoes' is not defined (yet). That we try to access
#   non-existent name.
