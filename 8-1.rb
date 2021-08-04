class Human
    attr_reader :name, :height, :weight
    
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end
end

suzuki = Human.new("鈴木二郎", 170, 60)
takada = Human.new("高田龍一", 166, 72)

print "名前：#{suzuki.name}\n"
print "身長：#{suzuki.height}cm\n"
print "体重：#{suzuki.weight}kg\n"
puts
print "名前：#{takada.name}\n"
print "身長：#{takada.height}cm\n"
print "体重：#{takada.weight}kg\n"