# Problem Statement 6: Employee Salary Calculation
# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. 
# The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.


class Employee

  attr_accessor :name , :salary

  def initialize(name,salary)
    @name=name
    @salary=salary
  end

  def display_details
    puts "Name of #{self.class}:- #{@name}, Salary :- #{@salary}"
  end

end

class Manager < Employee
  def give_bonus(employee,bonus)
    if employee.is_a?(Employee)
      employee.salary +=bonus
      puts "Developer #{employee.name} has received a bonus of #{bonus} from Manager #{@name}. New salary :- #{employee.salary}."
    else
      puts "Can only give bonuses to employees."
    end
  end
end


class Developer < Employee
  def increase_salary(percentage)
    @salary += (@salary*percentage/100)
    puts "Developer #{@name}'s salary increased by #{percentage}%. New salary :- #{@salary}"
  end
end


manager = Manager.new("Aalekh",10000)
developer = Developer.new("Aryan",5000)

developer.display_details
manager.give_bonus(developer,1000)
developer.display_details

developer.increase_salary(10)
developer.display_details

manager.display_details






