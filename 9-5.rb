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

print "名前："
name = gets.to_s
print "口座番号："
num = gets.to_i
print "預金残高："
balance = gets.to_i
puts "口座開設日："
print "年："
year = gets.to_i
print "月："
month = gets.to_i
print "日："
date = gets.to_i

newAcc = Account.new(name, num, balance, year, month, date)

puts newAcc.basicInfo
puts newAcc.openDay(year, month, date)


puts "口座開設日："
print "年："
year = gets.to_i
print "月："
month = gets.to_i
print "日："
date = gets.to_i
