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
        print "ナンバー：#{number}\n"
        print "車幅：#{width} mm\n"
        print "車高：#{height} mm\n"
        print "車長：#{length} mm\n"
        print "タンク：#{tankage} l\n"
        print "燃費：#{sfc} km/l\n"
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

    def pointNow()
        puts "(#{@@pointX}, #{@@pointY})"
    end
end
