require './Calculator'

RSpec.describe Calculator do    #  Groups all the tests for the Calculator class.
  let(:calculator) {Calculator.new}   # Defines a helper method calculator that lazily creates a new Calculator instance.

  describe "#add" do  # Groups tests for each method (add, subtract, multiply, and divide).
    it "adds two positive numbers" do # "it" defines an individual test case. The string inside it should describe the expected behavior.
      expect(calculator.add(5,3)).to eq(8)  # Used to define the expectation in a test. It’s followed by a matcher.
    end

    it "adds two negative numbers" do
      expect(calculator.add(-6,-10)).to eq(-16)
    end
  end

  describe "#subtract" do 
    it "subtract two numbers" do 
      expect(calculator.subtract(5,10)).to eq(-5)
    end
  end

  describe "#multiply" do
    it "multiply two numbers" do 
      expect(calculator.multiply(2,10)).to eq(20)
    end
  end 

  describe "#divide" do
    context "when the denominator is not zero" do # Used to define specific conditions under which tests are run, usually inside a describe block.
      it "divides two numbers" do 
        expect(calculator.divide(6,2)).to eq(3)
      end 
    end

    context "when the denominator is zero" do 
      it "raises an error" do 
        expect{ calculator.divide(10,0)}.to raise_error(ZeroDivisionError)
      end 
    end 
  end 
end
          
                         
# What is happening :-

# The class (Calculator.rb) contains the methods.
# The test file (Calculator_spec.rb) defines test cases that call the methods and check their behavior.
# RSpec runs the tests, comparing actual results from the methods to the expected results.
