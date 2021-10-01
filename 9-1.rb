class Coordinate
    attr_reader :pointX, :pointY

    def initialize(pointX, pointY)
        @pointX = pointX
        @pointY = pointY
    end

    def to_s
        "(#{pointX}, #{pointY})"
    end
end

puts "座標pを入力せよ。"
print "x座標："
x = gets.to_i
print "y座標："
y = gets.to_i

zahyo_p = Coordinate.new(x, y)
puts "p = #{zahyo_p.to_s}"