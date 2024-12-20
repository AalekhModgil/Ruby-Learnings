# Write RSpec tests for a StringManipulator class with methods like reverse_words (reverses the words in sentence) and capitalize_words.
# Include cases with sentences containing punctuation.


class StringManipulator

  def reverse_words(sentence)
    sentence.split.reverse.join(' ')
  end

  def capitalize_words(sentence)
    sentence.split.map{|str| str.capitalize}.join(' ')
  end

end


# s1 = StringManipulator.new
# puts s1.capitalize_words("hello, world! how are you?")