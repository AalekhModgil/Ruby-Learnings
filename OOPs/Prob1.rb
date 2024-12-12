# Problem Statement 1: Bank Account Management System
# Create a class BankAccount that encapsulates the details of a bank account. The class should have the following features:
# An instance variable balance (private) to store the current balance.
# Methods to deposit(amount) and withdraw(amount) with proper validation to ensure the balance doesn't go negative.
# A method display_balance that returns the current balance (public).
# Create an object of BankAccount, perform some deposit and withdrawal operations, and display the balance.

class BalanceError < StandardError 
  def initialize(msg = "Insufficient Account Balance!")
    super(msg)
  end
end

class BankAccount

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "Deposit Successful!"
    puts "Updated Balance :- $#{@balance}"
  end

  def withdraw(amount)
    begin
      if amount <= @balance
        @balance -= amount
        puts "Withdraw Successful!"
        puts "Updated Balance :- $#{@balance}"
      else
        raise BalanceError
      end 
    rescue BalanceError => e
      puts "#{e.message}"
    end
  end

  def display_balance
    puts "Current Balance :- $#{@balance}"
  end
  
  # private 
  # attr_accessor :balance
end

account = BankAccount.new(1000)
account.display_balance
account.withdraw(1500)
account.deposit(1000)
account.display_balance
