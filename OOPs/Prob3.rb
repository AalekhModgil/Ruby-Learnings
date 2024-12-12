# Problem Statement 3: Shape Hierarchy
# Create an abstract base class Shape with the following characteristics:
# A method area (abstract) that must be implemented by any subclass.
# Define two subclasses Circle and Rectangle. The Circle class should calculate its area using the formula πr^2, 
# and the Rectangle class should calculate its area using width * height.
# Create an instance of each subclass and calculate and display their areas.


class Shape
  def area
    raise NotImplementedError , "This method must be implemented in the subclasses"
  end
end

class Circle < Shape

  def initialize(radius)
    @radius = radius
  end

  def area
    puts "Area of circle is :- #{Math::PI*@radius**2}"
  end
end

class Rectangle < Shape

  def initialize(width,height)
    @width = width
    @height = height
  end

  def area
    puts "Area of rectangle is :-#{@width*@height}"
  end
end


circle1 = Circle.new(2)
circle1.area
rectangle1 = Rectangle.new(2,10)
rectangle1.area

