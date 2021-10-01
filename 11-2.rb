class MathMethod
    attr_accessor :x

    def initialize(x)
        @x = x
    end

    def abs
        x.abs
    end

    def sqrt
        Math.sqrt(x)
    end

    def PI
        Math::PI * x * x
    end
end

print "実数："
x = gets.to_f

num = MathMethod.new(x)
abs_num = num.abs
sqrt_num = num.sqrt
PI_num = num.PI

puts abs_num
puts sqrt_num
puts PI_num