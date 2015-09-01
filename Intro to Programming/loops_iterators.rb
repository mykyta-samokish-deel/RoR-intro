# 1. What does the each method in the following program return
#     after it is finished executing?
# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end
## ANSWER --> [1, 2, 3, 4, 5]

# 2. Write a while loop that takes input from the user, performs
#     an action, and only stops when the user types "STOP". Each loop
#     can get info from the user.
action = ""
while action != "STOP" do
  print "-Yo\n-"
  action = gets.chomp
end

# 3. Use the each_with_index method to iterate through an array of
#     your creation that prints each index and value of the array.
arr = [1,2,3,nil,true,false,"mykyta",14]
arr.each_with_index { |element, ind| puts "#{ind} --> #{element}" }

# 4. Write a method that counts down to zero using recursion.
def countdown(number)
  return "ZERO" if number == 0
  puts number
  countdown(number - 1)
end
puts countdown(5)
