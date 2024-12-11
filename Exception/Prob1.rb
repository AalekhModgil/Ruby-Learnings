begin
  print "Enter a dividend :- "
  dividend = Integer(gets.chomp)
  print "Enter a divisor :- "
  divisor = Integer(gets.chomp)
  result = dividend/divisor
rescue ZeroDivisionError => e
  puts "Divisor can't be zero! Please try again."
  retry
rescue ArgumentError => e
  puts "#{e.message}"
else
  puts "Result is :- #{result}"
end
