class Point2D
    attr_accessor :x, :y, :counter
    @@counter = 0

    def initialize
        @@counter += 1
    end

    def getCounter()
        return @@counter
    end

    def to_s
        "(#{@x}, #{@y})"
    end

    def today
        require 'date'
        day = Date.today
        return day.day
    end        
end

i = 0
while i < 36
    p1 = Point2D.new
    puts "#{p1.getCounter()}(#{i},#{i})"
    if p1.getCounter() == p1.today
        puts "当たり！"
        puts "今日#{p1.getCounter()}個目の座標が生成されました"
        break
    end
    i += 1
end
