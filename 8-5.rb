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
        f = dist/sfc

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

puts "車のデータを入力せよ。"
print "名前："
name = gets.to_s
print "ナンバー："
number = gets.to_s
print "車幅："
width = gets.to_s
print "車高："
height = gets.to_s
print "車長："
length = gets.to_s
print "タンク容量："
tankage = gets.to_s
print "ガソリン量："
fuel = gets.to_s
print "燃費："
sfc= gets.to_s

myCar = Car.new(name, number, width, height, length, tankage, fuel, sfc)

x = 0.00
y = 0.00
while true 
    print "現在地：#{x}, #{y}"
    print "残り燃料：#{fuel}"
    print "移動しますか[0...No/1...Yes]: "
    n = gets.to_i
    if n == 0 
        break
    end
    
    print "X方向の移動距離："
    dx = gets.to_i
    print "Y方向の移動距離："
    dy = gets.to_i
    
    if !myCar.move(dx, dy)
        print "燃料不足！"
    end
end