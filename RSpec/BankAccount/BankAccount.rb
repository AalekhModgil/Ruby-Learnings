# Develop a test suite using RSpec for a Ruby class BankAccount with methods to deposit, withdraw, and check_balance. 
# Ensure that withdrawing more than the available balance raises an appropriate error.

class InsufficientBalanceError < StandardError
  def initialize(msg = "Insufficient Bank Balance")
    super(msg)
  end
end

class BankAccount

  # attr_reader :balance
  def initialize(balance=0)
    if balance < 0
      raise ArgumentError , "Initial balance must be non-negative" 
    end
    @balance = balance
  end

  def deposit(amount)
    if amount < 0
      raise ArgumentError , "Deposit amount must be positive"
    end
    @balance += amount
  end


  def withdraw(amount)
    if amount <=0
       raise ArgumentError, "Withdrawal amount must be positive"
    end
    if amount > @balance
      raise InsufficientBalanceError 
    end
    @balance -= amount
  end

  def check_balance
    @balance
  end 

end

# account1 = BankAccount.new(1000)
# account1.withdraw(500)
# puts account1.check_balance
