require_relative './ShoppingCart.rb'

RSpec.describe ShoppingCart do 

  let(:cart) { ShoppingCart.new({ apple: 3, banana: 2}) }

  describe "#calculate_total_price" do
    it "calculates the total price with  a 10% discount" do 
      expect(cart.calculate_total_price).to eq(4.5)
    end
  end

  describe "#add_item" do 
    it "adds an item to cart and calculate total price with applied discount" do 
      cart.add_item(:orange,4)
      expect(cart.calculate_total_price).to eq(8.1)
    end
  end

  describe "#remove_item" do 
    it "removes an item from cart and calculate total price with applied discount" do 
      cart.remove_item(:apple)
      expect(cart.calculate_total_price).to eq(1.8)
    end

    it "raise error if the item we want to delete does not exist" do 
      expect{cart.remove_item(:mango)}.to raise_error(ItemNotExistError)
    end
  end

end