class Car
    attr_reader :name, :number, :width, :height, :length, :pointX, :pointY, :tankage, :fuel, :sfc

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
            x = x + dx
            y = y + dy
            return true
        end
    end

    def refuel(df)
        if df > 0
            fuel = fuel + df
            if fuel > tankage
                fuel = tankage
            end
        end
    end
end

vitz = Car.new("ビッツ", "福岡999ん99-99", 1660, 1500, 3640, 40.0, 35.0, 12.0)
march = Car.new("マーチ", "福岡999ん99-98", 1660, 1525, 3695, 41.0, 35.0, 12.0)

vitz.putSpec
march.putSpec