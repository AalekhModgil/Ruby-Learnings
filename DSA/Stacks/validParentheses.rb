def validParentheses(array)
  stack = []
  for i in 0...array.length
    if array[i] == '(' || array[i] == '[' || array[i] == '{'
      stack.push(array[i])
    elsif array[i] == ')' 
      if stack.length > 0
        current_top = stack.pop
        if current_top != '('
          return false
        end
      else
        return false
      end
    elsif array[i] == ']'
      if stack.length > 0
        current_top = stack.pop
        if current_top != '['
          return false
        end
      else
        return false
      end
    elsif array[i] == '}'
      if stack.length > 0
        current_top = stack.pop
        if current_top != '{'
          return false
        end
      else
        return false
      end
    end
  end
  return stack.empty?
end

array = gets.chomp
puts validParentheses(array)
