class MathMethod
    attr_accessor :x

    def initialize(x)
        @x = x
    end

    def abs
        return x.abs
    end

    def sqrt
        Math.sqrt(x)
    end

    def PI
        Math::PI * x * x
    end
end

num = MathMethod.new(5.5)
abs_num = num.abs
puts abs_num

sqrt_num = num.sqrt
puts sqrt_num

PI_num = num.PI
puts PI_num
