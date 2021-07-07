
class BankAccount 
  attr_reader :name
  attr_accessor :status, :balance   

  def initialize(name, balance=1000, status = "open")
    @name = name
    @balance = balance  
    @status = status 
  end

  def deposit(money)
    @balance = @balance + money 
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end 

  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else 
      return false  
    end 
  end 

  def close_account
    self.status = "closed" 
  end 

end 