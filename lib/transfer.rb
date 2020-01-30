class Transfer
  
  attr_accessor :amount, :status
  attr_reader :sender, :receiver

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 

  def valid?
    if sender.valid? && receiver.valid?
      return true 
    else 
      return false 
    end 
  end

  def execute_transaction 
      if valid? && status == "pending" && sender.balance > amount
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      else 
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end 
  end 

  def reverse_transfer 
    if self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    end 



  end
end 
