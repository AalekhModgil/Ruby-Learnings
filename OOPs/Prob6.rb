# Problem Statement 6: Employee Salary Calculation
# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. 
# The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.


class Employee
  def initialize(name,salary)
    @name=name
    @salary=salary
  end

  def display_details
    puts "Name of #{self.class}:- #{@name}"
    puts "Salary of #{self.class}:- #{@salary}" 
  end
end

class Manager < Employee
  def give_bonus(bonus)
    @salary += bonus
    puts "Congratulations for the bonus!"
  end
end


class Developer < Employee
  def increase_salary(percentage)
    @salary += (@salary*percentage/100)
    puts "Congratulations for salary increase!"
  end
end


manager = Manager.new("Aalekh",100000)
developer = Developer.new("Aryan",50000)

manager.display_details
manager.give_bonus(5000)
manager.display_details

developer.display_details
developer.increase_salary(10)
developer.display_details