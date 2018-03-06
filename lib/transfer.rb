class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
end

def status
  @status
end

  def valid?
    sender.valid? && receiver.valid? == true
end

  def execute_transaction
    if valid? == true
      @sender.balance -= @amount && @receiver.balance = @amount
      @status == "complete"
    else
      reject_transfer
    end
  end

  def reverse_transfer
    if @status == "rejected"
      @sender.balance += @amount
      @receiver.balance -= @amount
    end
  end

  def reject_transfer
    @status == "rejected"
    puts "Transaction rejected. Please check your account balance."
  end
end
