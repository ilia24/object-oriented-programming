class BankAccount
  attr_accessor :balance
  attr_accessor :interest_rate

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest(percent)
    floatpercent = percent.to_f
    fixpercent = ((floatpercent / 100) + 1)
    @balance = @balance * fixpercent
  end
end
