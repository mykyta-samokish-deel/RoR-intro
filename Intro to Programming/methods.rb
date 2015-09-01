# 1. Write a program that contains a method called greeting
#     that takes a name as its parameter. It then prints a
#     greeting message with the name included in it.
def greeting(name)
  print "Hello, #{name}\n"
end

# 2. What do the following expressions evaluate to?
    # 1. x = 2
    # 2. puts x = 2
    # 3. p name = "Joe"
    # 4. four = "four"
    # 5. print something = "nothing"
## ANSWER
# 1) 2
# 2) nil
# 3) "Joe"
# 4) "four"
# 5) nil

# 3. Write a program that includes a method called multiply
#     that takes two arguments and returns the product
#     of the two numbers.
def multiply(x, y)
  x * y
end

# 4. What will the following code print to the screen?
    # def scream(words)
    #   words = words + "!!!!"
    #   return
    #   puts words
    # end
    # scream("Yippeee")
## ANSWER
# None.

# 5. 1) Edit the method in exercise #4 so that it does print
#     words on the screen.
#    2) What does it return now?
#           ## ANSWER --> still None (nil)
def scream(words)
  words += "!!!!"
  puts words
end
scream("Yippeee")

# 6. What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
## ANSWER
# Instead of 2 parameters, user passed only 1.
