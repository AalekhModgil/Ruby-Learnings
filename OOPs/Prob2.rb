# Problem Statement 2: Student Information System
# Design a class Student that stores the name, age, and grades of a student. Implement the following:
# Use attr_accessor for name and age, and attr_reader for grades (making it read-only).
# The class should have a method add_grade(grade) that adds a grade to the student's grades array.
# Write a method calculate_average to return the average grade of the student.
# Ensure that the grades variable is encapsulated properly, and students can only add grades through the add_grade method.


class Student

  attr_accessor :name , :age
  attr_reader :grades
  
  def initialize(name,age)
    @name = name
    @age = age
    @grades = []
  end

  def add_grade(grade)
    @grades.push(grade)
  end

  def calculate_average
    average = @grades.sum/@grades.length
    puts "Average grade of #{@name} :- #{average}"
  end
end

student1 = Student.new("Aalekh",21)
student1.add_grade(100)
student1.add_grade(80)
student1.calculate_average

