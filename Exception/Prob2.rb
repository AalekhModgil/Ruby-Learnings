class CustomAgeError < StandardError
  def initialize(msg = "Age must be between 18 and 100")
    super(msg)
  end
end
begin
  print "Enter your age :- "
  age = gets.to_i
  raise CustomAgeError if  age < 0 || age > 100
  puts "Your age is :- #{age}"
rescue CustomAgeError => e
  puts "Age not valid! Please try again."
  retry
end


