class Car
    attr_reader :name, :number, :width, :height, :length, :pointX, :pointY, :tankage, :fuel, :sfc

    @@pointX = 0
    @@pointY = 0

    def initialize(name, number, width, height, length, tankage, fuel, sfc)
        @name = name
        @number = number 
        @width = width
        @height = height 
        @length = length
        @tankange = tankage
        @fuel = fuel
        @sfc = sfc
    end

    def accFuel()
        tankage >= fuel ? tankage : fuel
    end

    def putSpec()
        print "名前：#{name}\n"
        print "車幅：#{width} mm\n"
        print "車高：#{height} mm\n"
        print "車長：#{length} mm\n"
    end

    def move(dx, dy)
        dist = Math.sqrt(dx * dx + dy * dy)
        f = dist / sfc

        if f > fuel
            return false
        else
            fuel = fuel - f
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
        super
        print "総走行距離：#{@@totalMileage}km\n"
    end

    def purchaseDay
        "#{@year}年#{@month}月#{@date}日"
    end
end

exMycar = ExCar.new("W221", 1845, 1490, 5205, 90.0, 2015, 12,24)
puts exMycar.putSpec