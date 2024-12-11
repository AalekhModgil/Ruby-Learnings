class InvalidEmailError < StandardError
  def initialize(msg = "Email is not valid. Please try again")
    super(msg)
  end
end

begin
  print "Enter your email :-"
  email = gets.chomp
  regex = /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i
  if email.match(regex) == nil
    raise InvalidEmailError
  end
rescue InvalidEmailError => e
  puts "#{e.message}"
  retry
else
  puts "Your email is :- #{email}"
end
