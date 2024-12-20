# Develop RSpec tests for a method fibonacci(n) that returns the first n Fibonacci numbers.
# Ensure the tests cover edge cases such as n = 0 and n = 1.

def fibonacci(n)

  return [] if n <= 0

  return [0] if n == 1

  fib_sequence = [ 0, 1 ]
  
  (2...n).each do |i|
    fib_sequence.push(fib_sequence[i-1] + fib_sequence[i-2])
  end
  return fib_sequence

end

# result = fibonacci(-1)
# puts result.inspect
