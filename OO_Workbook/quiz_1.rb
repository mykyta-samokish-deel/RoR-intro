# 1. Which of the following are objects in Ruby? If they are objects,
#  how can you find out what class they belong to?
# 1) true                       ## TrueClass
# 2) "hello"                    ## String
# 3) [1, 2, 3, "happy days"]    ## Array
# 4) 142                        ## FixNum


# 2. If we have a Car class and a Truck class and we want to be able to
#  go_fast, how can we add the ability for them to go_fast using the module
#  Speed. How can you check if your Car or Truck can now go fast?

# 3. When we called the go_fast method from an instance of the Car class (as
#  shown below) you might have noticed that the string printed when we go
#  fast includes the name of the type of vehicle we are
#  using. How is this done?
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
    ## 3. We call instance class here "#{self.class}"
  end
end

class Car
  include Speed ## 2. here's how
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed ## 2. here's how
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

# 4. If we have a class AngryCat how do we create a new instance of this class?
# The AngryCat class might look something like this:
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

angrycat = AngryCat.new ## here's how


# 5. Which of these two classes has an instance variable and how do you know?
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

## Pizza has an instance variable because of at sign (@name)

# 6. What could we add to the class below to access the
#  instance variable @volume?
class Cube
  attr_accessor :volume ## we ought to add getter and setter for volume var
  def initialize(volume)
    @volume = volume
  end
end


# 7. What is the default thing that Ruby will print to the screen if
#  you call to_s on an object? Where could you go to find out if you
#  want to be sure?

## it will print a hash of created object id by default


# 8. If we have a class such as the one below:
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
# You can see in the make_one_year_older method we have used self. What
#  does self refer to here?

## it refers to the variable itself, without being modified anyhow


# 9. If we have a class such as the one below:
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end
# In the name of the cats_count method we have used self. What does self
#  refer to in this context?

## It refers to class method. It means that we can call it "p Cat.cats_count"
# without initializing an object class.


# 10. If we have the class below, what would you need to call to create a
#  new instance of this class.
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

bag = Bag.new(color="blue", material="ferum")
p bag
