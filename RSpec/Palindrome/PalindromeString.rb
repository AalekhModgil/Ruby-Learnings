# Write an RSpec test for a method palindrome? that returns true if a given string is a palindrome and false otherwise.
# Include tests for edge cases such as empty strings and special characters.

def palindromeString?(inputString)
  return true if inputString.empty?
  modifiedString = inputString.gsub(/[^a-z0-9]/i,'').downcase
  return false if modifiedString.empty?
  if modifiedString == modifiedString.reverse
    true
  else
    false
  end
end

# puts palindromeString?("leveL")
# # puts palindromeString?("ok")
# puts palindromeString?("")
