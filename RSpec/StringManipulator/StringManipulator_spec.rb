require_relative './StringManipulator.rb'

RSpec.describe StringManipulator do 
  let (:manipulator) {StringManipulator.new}

  describe "#reverse_words" do
    it "reverse the words in a sentence" do 
      sentence = "My name is Kaizen"
      expect(manipulator.reverse_words(sentence)).to eq("Kaizen is name My")
    end

    it "handles punctuation correctly" do
      sentence = "Hello, world! How are you?"
      expect(manipulator.reverse_words(sentence)).to eq('you? are How world! Hello,')
    end

    it 'returns an empty string for an empty input' do
      expect(manipulator.reverse_words('')).to eq('')
    end

    it 'returns the same word when there is only one word' do
      sentence = 'Hello'
      expect(manipulator.reverse_words(sentence)).to eq('Hello')
    end
  end

  describe "#capitalize_words" do
    it "capitalizes the first letter of each word" do 
      sentence = "my name is kaizen"
      expect(manipulator.capitalize_words(sentence)).to eq("My Name Is Kaizen")
    end

    it "handles punctuation correctly without changing it" do 
      sentence = "hello, world! how are you?"
      expect(manipulator.capitalize_words(sentence)).to eq("Hello, World! How Are You?")
    end

    it 'returns an empty string for an empty input' do
      expect(manipulator.capitalize_words('')).to eq('')
    end

  end

end






