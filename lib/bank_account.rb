class BankAccount
    attr_accessor :bank_account, :balance, :status
    attr_reader :name
    
    def initialize(bank_account)
        @name = "Avi"
        @balance = 1000
        @status = "open"
    end

    def deposit(money)
        self.balance += balance
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        if status == "open" && balance > 0
            return true
        else
            return false
        end
    end
    
    def close_account
        self.status = "closed"
    end

end
