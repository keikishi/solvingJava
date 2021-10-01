class Account
    attr_accessor :name, :num, :balance, :year, :month, :date
    def initialize(name, num, balance, year, month, date)
        @name = name
        @num = num
        @balance = balance
        @year = year
        @month = month
        @date = date
    end

    def deposit
        k = balance + k
    end

    def withdraw
        k = balance - k
    end

    def basicInfo
        puts "名前：#{name} 口座番号：#{num} 預金残高：#{balance} 口座開設日：#{year}年#{month}月#{date}日"
    end

    def openDay(year, month, date)
        puts "口座開設日：#{year}年#{month}月#{date}日"
    end 
end

class TimeAccount < Account
    attr_accessor :name, :num, :balance, :timeBalance

    def initialize(name, num, balance, timeBalance)
        @name = name
        @num = num
        @balance = balance
        @timeBalance = timeBalance
    end

    def getTImeBalance
        @timeBalance
    end
    
    def cancel()
        @timeBalance = 0
        deposit(@timeBalance)
    end
end

def compBalance(a, b)
    totalBalanceA = a.instance_of?(TimeAccount) ? a.balance() + a.timeBalance() : a.balance()
    totalBalanceB = b.instance_of?(TimeAccount) ? b.balance() + b.timeBalance() : b.balance()
    
    if totalBalanceA > totalBalanceB
        1
    elsif totalBalanceA < totalBalanceB
        -1
    else
        0
    end
end

Adachi = Account.new("足立", "123456", 500, 2021, 8, 25)
Nakata = TimeAccount.new("中田", "654321", 300 , 400)

print "足立君と中田君の預金残高の比較結果です。\n"
case compBalance(Adachi, Nakata)
    when 0 
        print "二人の預金残高は同じ"
    when 1
        print "足立君の方が預金残高は多い"
    else
        print "中田君の方が預金残高は多い"
end