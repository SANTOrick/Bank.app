class Account
  attr_reader :name, :amount
  attr_accessor :balance
  
  def initialize(name, balance=0)
  @name = name
  @balance = balance
  end
  private
  def pin()
  1234
  end
  def pin_error()
    return "Access denied: incorrect PIN."
  end
  public
  def display_balance(pin_number)
    if pin_number == pin then "Balance: $#{@balance}."
    else pin_number != pin 
      puts pin_error
    end
  end
   
  def withdraw(pin_number, amount)
    if pin_number==pin && amount <= @balance && amount>=0 then (@balance =balance-amount) 
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    elsif pin_number==pin && amount<=0 then 
      puts "Enter an amount greater than $0"
    elsif pin_number==pin && amount>@balance then 
      puts "Warning, overdrafting."
    else pin_number != pin 
      puts pin_error
    end
  end
     
  def deposit(pin_number, amount)
    if pin_number==pin && amount >= 0 then (@balance = balance+amount) 
      puts "Deposited $#{amount}. New balance: $#{@balance}."
    elsif pin_number==pin && amount <=1
      puts "Cannot deposit less than $1"
    else pin_number != pin 
      puts pin_error
    end
  end
    
end

