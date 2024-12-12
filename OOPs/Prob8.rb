# Problem Statement 8: Shape Area Calculation Using Polymorphism
# Given the following classes:
# A base class Shape with an abstract method area.
# Two subclasses: Square (with side length) and Triangle (with base and height).
# Both subclasses implement the area method to calculate the respective areas.
# Create an array of different shapes (e.g., squares and triangles) and use polymorphism to 
# calculate and display the area of each shape without knowing its exact type.

class Shape
  def area
    raise NotImplementedError , "This method must be implemented by subclasses" 
  end
end

class Square < Shape
  def initialize(side)
    @side = side
  end

  def area
    puts "Area of square is :- #{@side**2}"
  end
end

class Triangle < Shape 
  def initialize(base,height)
    @base = base
    @height = height
  end
  
  def area
    puts "Area of Triangle is :- #{(0.5*@base*@height)}"
  end
end

shapes = [Triangle.new(2,10),Square.new(4),Triangle.new(5,10)]

shapes.each do |shape|
  shape.area
end