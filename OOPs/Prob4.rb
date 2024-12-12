# Problem Statement 4: Vehicle Rental System
# Design an abstract class Vehicle with the following:
# An abstract method calculate_rent to compute the rental cost.
# Two subclasses Car and Bike that implement the calculate_rent method. For example, Car charges $20/day, and Bike charges $10/day.
# Create instances of both subclasses and calculate their rental charges based on the number of days.


class Vehicle

  def calculate_rent
    raise NotImplementedError ,"This method must be implemented in the subclasses"
  end

end

class Car < Vehicle

  @@car_charges_per_day = 20

  def initialize(days)
    @days = days
  end

  def calculate_rent
    puts "Car charges for #{@days} days :- $#{@@car_charges_per_day * @days}"
  end

end

class Bike < Vehicle

  @@bike_charges_per_day = 10

  def initialize(days)
    @days = days
  end

  def calculate_rent
    puts "Bike charges for #{@days} days :- $#{@@bike_charges_per_day * @days}"
  end

end

car1 = Car.new(10)
car1.calculate_rent

bike1 = Bike.new(5)
bike1.calculate_rent
