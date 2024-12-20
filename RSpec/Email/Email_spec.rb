require_relative './Email.rb'

RSpec.describe User do
  before(:each) do 
    User.class_variable_set(:@@users,[])
  end
  describe "validations" do 
    it "validates presence of email" do
      user = User.new(nil)
      expect(user.valid_email?).to be false
      expect(user.errors).to include("Email can't be blank")
    end

    it "validates uniqueness of email" do 
      user1 = User.new("aalekh@gmail.com")
      user1.valid_email?
      user2 = User.new("aalekh@gmail.com")
      expect(user2.valid_email?).to be false
      expect(user2.errors).to include("Email has already been taken")
    end

    it "validates format of an email" do 
      user1 = User.new("invalid-email")
      user1.valid_email?

      user2 = User.new("aalekh7@gmail.com")
      user2.valid_email?

      expect(user1.errors).to include("Email is not in a valid format")
      expect(user2.errors).to be_empty
    end
  end
end

