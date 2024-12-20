require './PalindromeString.rb'


RSpec.describe "PalindromeString" do
  describe "palindromeString?" do 
    it "returns true for palindrome string" do
      expect(palindromeString?("level")).to eq(true)
    end

    it "returns false for non-palindrome string" do 
      expect(palindromeString?("ok")).to eq(false)
    end 

    it "returns true for an empty string" do 
      expect(palindromeString?("")).to eq(true)
    end

    it "returns true for a single character string" do
      expect(palindromeString?("a")).to eq(true)
    end

    it "return false for string with only special characters that do not form a palindrome" do 
      expect(palindromeString?("!?")).to eq(false)
    end

  end 
end