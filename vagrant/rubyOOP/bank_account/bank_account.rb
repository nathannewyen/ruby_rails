# We are going to create a BankAccount class. This class will recreate some of the common account transactions that normally occur for a bank account such as displaying your account number, checking and savings amount, total amount. Of course, there are also methods to invoke such as depositing a check, checking your balance, withdrawing money

class BankAccount
  @@no_of_accounts = 0
  private
    def user_account_number
      @account_nummber = rand(1000000000000..9999999999999)
    end

    def show_interest
			return @interest
		end

  public
    attr_accessor :checking_balance, :savings_balance
    def initialize
      user_account_number()
      @@no_of_accounts += 1
      @checking_balance = 0
      @savings_balance = 0
      @interest = 0.01
    end

    # Checking method
    def checking_account
      puts "Your checking balance is: $#{checking_balance}"
      self
    end

    # Saving method
    def savings_account
      puts "Your savings balance is: $#{savings_balance}"
      self
    end

    # Deposit method
    def deposit_checking(num)
      @checking_balance += num
      self
    end

    def deposit_savings(num)
      @savings_balance += num
      self
    end

    # Withdraw method
    def withdraw_checking(num)
      @checking_balance -= num
      self
    end 

    def withdraw_savings(num)
      @savings_balance -= num
      self
    end
    
    # Track accounts
    def track_account
		  puts @@no_of_accounts
		  self
    end

    def account_information
      puts "Your account number is #{user_account_number()}"
      puts "Your checking balance is: $#{checking_balance}"
      puts "Your savings balance is: $#{savings_balance}"
      puts "Your current interest rate: #{show_interest()}"
      self
    end
end

user1 = BankAccount.new
user1.deposit_checking(60).withdraw_checking(10).account_information

user2 = BankAccount.new
user2.deposit_checking(100).withdraw_checking(30).account_information.track_account
