class BankAccount

    attr_accessor :status, :balance
    attr_reader :name, :deposit

    def initialize(name, balance = 1000, status = "open") 
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(num)
        @balance += num
    end    

    def display_balance
        "Your balance is $#{@balance}."
    end    

    def valid?
        if status == "open" && @balance > 0
            return true
        else
            return false    
        end    
    end

    def close_account
        @status = "closed"
    end    

end
