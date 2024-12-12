# Problem Statement 10: Online Store Using OOP Principles
# Create a class Product with name, price, and quantity attributes. Then:
# Create two subclasses ElectronicProduct (with a warranty_period) and ClothingProduct (with a size).
# Add methods to calculate the total price based on the quantity.
# Use polymorphism to apply a discount on all products. Electronic products get a 10% discount,
# and clothing products get a 5% discount.
# Demonstrate encapsulation by hiding the product’s details from the user and only providing access to relevant methods.


class Product
  def initialize(name,price,quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price
    return @price * @quantity
  end

  def apply_discount
    raise NotImplementedError , "This method must be applied by the subclasses"
  end

  def product_details
    "Name :- #{@name}, Price :- #{@price}, Quantity :- #{@quantity}"
  end
end

class ElectronicProduct < Product
  def initialize(name,price,quantity,warranty_period)
    super(name,price,quantity)
    @warranty_period = warranty_period
  end

  def apply_discount
    discounted_price = @price * 0.9
    return discounted_price * @quantity
  end

  def product_details
    super + ", Warranty Period :- #{@warranty_period} months"
  end
end

class ClothingProduct < Product
  def initialize(name,price,quantity,size)
    super(name,price,quantity)
    @size = size
  end

  def apply_discount
    discounted_price = @price * 0.95
    return discounted_price * @quantity
  end

  def product_details
    super + ", Size :- #{@size}"
  end
end


electronicProduct1 = ElectronicProduct.new("Television",30000,5,24)
clothingProduct1 = ClothingProduct.new("T-shirt",1000,10,"Large")

puts electronicProduct1.product_details
puts "Total price :- #{electronicProduct1.total_price}"
puts "Price after discount :- #{electronicProduct1.apply_discount}"


puts clothingProduct1.product_details
puts "Total price :- #{clothingProduct1.total_price}"
puts "Price after discount :- #{clothingProduct1.apply_discount}"
