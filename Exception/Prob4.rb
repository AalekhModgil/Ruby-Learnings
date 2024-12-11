begin
  print "Enter a number :- "
  number = Integer(gets.chomp)
  square = Math.sqrt(number)
rescue ArgumentError => e
  puts "Enter a valid input. #{e.message}"
  retry
rescue Math::DomainError => e
  puts "Number can't be negative. #{e.message}"
  retry
else
  puts "Square Root of number is :- #{square}"
end
