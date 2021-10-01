class Car
    attr_reader :name, :number, :width, :height, :length, :pointX, :pointY, :tankage, :fuel, :sfc

    @@pointX = 0
    @@pointY = 0

    def initialize(name, width, height, length, fuel, year, month, date)
        @name = name
        @width = width
        @height = height 
        @length = length
        @fuel = fuel
        @year = year
        @month = month
        @date = date
    end

    def putSpec()
        print "名前：#{name}\n"
        print "車幅：#{width} mm\n"
        print "車高：#{height} mm\n"
        print "車長：#{length} mm\n"
    end

    def move(dx, dy)
        dist = Math.sqrt(dx * dx + dy * dy).to_i

        if dist > fuel
            return false
        else
            @fuel = @fuel - dist
            @@pointX = @@pointX + dx
            @@pointY = @@pointY + dy
            return true
        end
    end

    def setPoint
        "(#{@@pointX}, #{@@pointY})"
    end

end

class ExCar < Car
    @@totalMileage = 0

    def gettotalMileage
        @@totalMileage
    end

    def putSpec()
        super
        print "総走行距離：#{@@totalMileage}km\n"
    end

    def purchaseDay
        "#{@year}年#{@month}月#{@date}日"
    end

    def move(dx, dy)
        dist = Math.sqrt(dx * dx + dy * dy)
        
        if dist > fuel
            false
        else
            @fuel = @fuel - dist
            @@pointX = @@pointX + dx
            @@pointY = @@pointY + dy
            @@totalMileage = @@totalMileage + dist
            true
        end
    end
end

MycarCar1 = ExCar.new("W221", 1845, 1490, 5205, 90, 2015, 12,24)

MycarCar1.move(10, 10)

puts MycarCar1.gettotalMileage