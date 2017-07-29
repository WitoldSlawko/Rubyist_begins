class Account
  
  attr_reader :name
  attr_reader :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorected PIN"
  end
  
  public
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance $#{@balance}" : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew $#{amount}. New balance $#{@balance}"
    else
      puts pin_error
    end
  end
  
  def deposit(pin_number, amount)
    if pin_number == @pin
      @balance += amount
      puts "Deposited $#{amount}. New balance $#{@balance}"
    else
      puts pin_error
    end
  end
  
end

checking_account = Account.new("Wiciu", 1_000_000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 934547);
checking_account.deposit(1234, 89400)