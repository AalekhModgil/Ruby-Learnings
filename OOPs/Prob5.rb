# Problem Statement 5: Animal Hierarchy
# Create a base class Animal with a method make_sound. Then:
# Create two subclasses Dog and Cat, where Dog implements make_sound as "Woof" and Cat implements make_sound as "Meow".
# Write a method describe_animal in the base class that outputs a description of the animal (i.e., the animal's type and sound).
# Instantiate objects of Dog and Cat, and call their describe_animal method.


class Animal 
  def initialize(type)
    @type = type
  end

  def describe_animal
    puts "Animal Type :- #{@type}"
    puts "Sound :- #{self.make_sound}"
  end
end

class Dog < Animal
  def initialize
    super("Dog")
  end

  def make_sound
    return "Woof!"
  end
end

class Cat < Animal
  def initialize 
    super("Cat")
  end

  def make_sound
    return "Meow!"
  end
end


dog1 = Dog.new
dog1.describe_animal

cat1 = Cat.new
cat1.describe_animal