# Create an RSpec test to verify that a User model validates the presence of an email attribute and ensures it is unique.
class User

  @@users = []

  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def valid_email?
    validate_presence && validate_uniqueness && validate_format
  end

  def errors
    if @errors.nil?
      @errors = []
    end
    @errors
  end

  def validate_presence
    if @email.nil? || @email.empty?
      errors << "Email can't be blank"
      return false
    end
    return true
  end 

  def validate_format
    unless @email =~ /^[\w\+\-\.]+@[a-z\d\-\.\+]+\.[a-z]+$/
      errors << "Email is not in a valid format"
      return false
    end
    return true
  end  

  def validate_uniqueness
    @@users.each do |user|
      if user.email == @email
        errors << "Email has already been taken"
        return false
      end
    end
    @@users << self
    return true
  end
end


