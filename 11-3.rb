class DateID
    @@ID = 0
    @@counter = 0

    def initialize
        @@ID += 1
    end

    def today
        require 'date'
        day = Date.today
        puts "今日は#{day.year}年#{day.month}月#{day.day}日"
        @@counter = day.year * 1000000 + day.month * 10000 + day.day * 100
    end

    def todayCounter
        require 'date'
        day = Date.today
        @@counter = day.year * 1000000 + day.month * 10000 + day.day * 100
    end


    def getID()
        @@ID
    end
end

todayID = DateID.new
print "aの識別番号：#{todayID.today + todayID.getID()}"
puts 
todayID1 = DateID.new
puts "bの識別番号：#{todayID1.todayCounter + todayID1.getID()}"
todayID2 = DateID.new
puts "cの識別番号：#{todayID2.todayCounter + todayID2.getID()}"
