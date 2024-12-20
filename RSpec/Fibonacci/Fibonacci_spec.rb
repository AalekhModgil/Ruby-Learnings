require_relative "./Fibonacci.rb"

RSpec.describe "fibonacci" do
  it "returns an empty array when n is 0" do 
    expect(fibonacci(0)).to eq([])
  end

  it "returns first fibonacci number when n is 1" do 
    expect(fibonacci(1)).to eq([0])
  end

  it "returns the first two fibonacci number when n is 2" do 
    expect(fibonacci(2)).to eq([0,1])
  end

  it 'returns the first five Fibonacci numbers when n is 5' do
    expect(fibonacci(5)).to eq([0, 1, 1, 2, 3])
  end

  it 'returns an empty array when n is negative' do
    expect(fibonacci(-1)).to eq([])
  end

end
  

