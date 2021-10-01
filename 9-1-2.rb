class Coordinate
    attr_accessor :pointX, :pointY

    def initialize(pointX, pointY)
        
@pointX
 = pointX
        
@pointY
 = pointY        
    end
end

zahyo = Coordinate.new(5, 5)
puts "(#{zahyo.pointX}, #{zahyo.pointY})"

puts zahyo.pointX