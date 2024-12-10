
loop do
  print "Enter a number between 1 and 10 : "
  number = gets.to_i
  if number < 1 || number > 10
    puts "Invalid number!"
    redo
  else
    puts "Number is : #{number}"
    break
  end
end