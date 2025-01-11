# Problem: Given a string, determine if all characters in the string are unique.

require 'set'

def checkUniqueOrNot(string)
  set = Set.new
  string.each do |char|
    if set.include?(char)
      return false
    end
    set << char
  end
  return true
end


print "Enter input string :- "
# string = gets.chomp.chars
string = gets.chomp.split("")
result = checkUniqueOrNot(string)
if result 
  puts "All characters in string are unique."
else
  puts "All characters in string are not unique."
end