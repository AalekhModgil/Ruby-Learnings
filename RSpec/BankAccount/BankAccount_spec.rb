require_relative './BankAccount.rb'

RSpec.describe BankAccount do 
  # Ensures a new instance of BankAccount is created with a starting balance of 100 before each test example runs.
  # If one test deposits money into @account, it won't carry over to other tests because a fresh instance is created each time.
  before(:each) do
    @account = BankAccount.new(100) 
  end

  describe "#deposit" do 
    it "increase the balance by deposited amount" do 
      @account.deposit(50)
      expect(@account.check_balance).to eq(150)
    end

    it "raises an error if deposit amount is negative" do 
      expect { @account.deposit(-50) }.to raise_error(ArgumentError , "Deposit amount must be positive")
    end
  end

  describe "#withdraw" do 
    it "decreases the balance by the withdrawn amount" do 
      @account.withdraw(30)
      expect(@account.check_balance).to eq(70)
    end

    it "raises an error if the withdrawal amount exceeds the available balance" do 
      expect {@account.withdraw(200)}.to raise_error(InsufficientBalanceError)
    end

    it "raises an error if the withdrawal amount is negative" do 
      expect {@account.withdraw(-20)}.to raise_error(ArgumentError, "Withdrawal amount must be positive")
    end
  end

  describe "#check_balance" do 
    it "returns the current balance" do 
      expect(@account.check_balance).to eq(100)
    end
  end
end
