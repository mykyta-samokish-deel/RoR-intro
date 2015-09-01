# 1. Write a program that checks if the sequence of
#     characters "lab" exists in the following strings.
#     If it does exist, print out the word. - "laboratory" - "experiment"
#     - "Pans Labyrinth" - "elaborate" - "polar bear"

def check_in(string)
  /lab/ =~ string ? string : "Nope"
end
puts check_in("laboratory")
puts check_in("experiment")
puts check_in("Pans Labyrinth")
puts check_in("elaborate")
puts check_in("polar bear")

# 2. What will the following program print to the screen? What will it return?

# def execute(&block)
#   block
# end
# execute { puts "Hello from inside the execute method!" }
## ANSWER --> None. We must "call" the block. [block.call]

# 3. What is exception handling and what problem does it solve?
## ANSWER --> This is a tool, which helps to keep program running even when
#   there are logical or grammatical mistakes in our code.

# 4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end
execute { puts "Yo" }

# 5. Why does the following code...
# def execute(block)
#   block.call
# end
# execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'
## ANSWER --> because ampersand sign (&) is missing. It allows a block
#   to be passed as a parameter
