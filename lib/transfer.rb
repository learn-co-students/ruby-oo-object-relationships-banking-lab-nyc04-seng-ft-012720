require "pry"

class Transfer 
  attr_accessor :sender, :receiver, :status, :amount 


  def initialize(sender, receiver, status="pending", amount)
    @sender = sender 
    @receiver = receiver 
    @status = status 
    @amount = amount 
  end 
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end 

  def execute_transaction
    if self.valid? && sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount 
      self.status = "complete"  
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end   


def reverse_transfer 
  if self.valid? && @receiver.balance > @amount && @status == "complete"
  @sender.balance += @amount
  @receiver.balance -= @amount 
  @status = "reversed"
end 
end 

end 