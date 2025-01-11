def reversePolishNotation(expression)
  stack = []
  expression.each do |value|
    if value =~ /^-?\d+$/
      stack.push(value.to_i)
    else
      b = stack.pop
      a = stack.pop

      if value == '+'
        stack.push(a + b)
      elsif value == '-'
        stack.push(a - b)
      elsif value == '*'
        stack.push(a * b)
      elsif value == '/'
        stack.push(a / b)
      else
        raise "Invalid Operator :- #{value}"
      end
    end
  end
  stack.pop
end

expression = gets.chomp.split
puts reversePolishNotation(expression)