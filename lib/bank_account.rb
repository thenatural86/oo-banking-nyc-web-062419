class BankAccount
    attr_accessor  :balance,:status
    attr_reader :name

    @@all = []
    def initialize(name)
        @name,@balance,@status = name, 1000, "open"
        @@all << self 

    end
    def valid?
       if self.balance > 0 && self.status == "open"
        return true
       else
        return false
       end 
    end

    def deposit(amount)
        self.balance += amount
    end
    def display_balance
        "Your balance is $#{self.balance}."
    end

    
    def close_account 
        self.status = "closed"
    end
end
