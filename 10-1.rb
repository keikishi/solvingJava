class Human
    @@id = 0

    attr_reader :name, :height, :weight
    
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
        @@id += 1
    end
    
    def gainWeight(w) 
        weight + w
    end
    
    def reduceWeight(w) 
        weight - w
    end

    def getCount()
        return @@id
    end
end

suzuki = Human.new("鈴木二郎", 170, 60)
print "名前：#{suzuki.name()}\n"
print "身長：#{suzuki.height()}cm\n"
print "体重：#{suzuki.reduceWeight(3)}kg\n"
print "ID：#{suzuki.getCount()}\n"

takada = Human.new("高田龍一", 166, 72)
print "名前：#{takada.name()}\n"
print "身長：#{takada.height()}cm\n"
print "体重：#{takada.reduceWeight(5)}kg\n"
print "ID：#{takada.getCount()}"