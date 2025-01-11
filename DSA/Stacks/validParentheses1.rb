def check_valid_parentheses(string)
  stack = []
  pairs = { ')' => '(' , ']' => '[' , '}' => '{' }

  string.each_char do |char|
    if pairs.values.include?(char)
      stack.push(char)
    elsif pairs.keys.include?(char)
      if stack.empty? || stack.pop != pairs[char]
        return false
      end
    end
  end
  stack.empty?
end

string = gets.chomp
if check_valid_parentheses(string)
  puts "String is valid."
else
  puts "String is not valid."
end