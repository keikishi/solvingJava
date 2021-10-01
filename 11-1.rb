class Omikuji

    def today
        require 'date'
        day = Date.today
        puts  "今日は#{day.year}年#{day.month}月#{day.day}日です"
    end

    def omikujiContents
        puts "今日の運勢は#{["大吉", "中吉", "吉", "凶"].sample}です"
    end
end

a = Omikuji.new
print a.today
print a.omikujiContents
    
