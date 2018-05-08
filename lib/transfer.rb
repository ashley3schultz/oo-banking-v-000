require 'pry'
class Transfer
  
  attr_reader :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid? 
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if !@sender.valid?
      "Transaction rejected. Please chack you account balance."
    elsif @status == "complete"
      nil
    else 
      if @status == "complete" 
      else @sender.valid?
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      end
  end
end
