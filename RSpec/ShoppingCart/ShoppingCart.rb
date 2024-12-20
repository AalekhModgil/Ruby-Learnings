# Create RSpec tests for a ShoppingCart class that can add_item, remove_item, and calculate the total_price. 
# Ensure the tests check if discounts are applied correctly when specific conditions are met.

class ItemNotExistError < StandardError
  def initialize(msg = "Item does not exist")
    super(msg)
  end
end

class ShoppingCart
  def initialize(items = {})
    @items = items
  end

  def add_item(item_name,item_price)
    @items[item_name] = item_price
  end

  def remove_item(item_name)
    if !@items.key?(item_name)
      raise ItemNotExistError
    end
    @items.delete(item_name)
  end

  def calculate_total_price
    total_price=0
    @items.each do |item_name,item_price|
      total_price += item_price
    end
    apply_discount(total_price)
  end

  private 
  def apply_discount(total_price)
    discounted_price = total_price * 0.90
    return discounted_price
  end
end
