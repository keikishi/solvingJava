class Human
    attr_reader :name, :height, :weight
    
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end
<<<<<<< HEAD
    
    def gainWeight(w) 
        weight + w
    end
    
=======

    def name
        @name
    end

    def height
        @height
    end

    def weight
        @weight
    end

    def getName()
        name
    end

    def getHeight()
        height
    end
    
    def getWeight()
        weight
    end

    def gainWeight(w) 
        weight + w
    end

>>>>>>> f877c29053bc2a2182f53ff7989a8dfc6030ec5b
    def reduceWeight(w) 
        weight - w
    end
end

suzuki = Human.new("鈴木二郎", 170, 60)
takada = Human.new("高田龍一", 166, 72)

<<<<<<< HEAD
print "名前：#{suzuki.name()}\n"
print "身長：#{suzuki.height()}cm\n"
print "体重：#{suzuki.reduceWeight(3)}kg\n"
puts
print "名前：#{takada.name()}\n"
print "身長：#{takada.height()}cm\n"
print "体重：#{takada.reduceWeight(5)}kg\n"
=======
print "名前：#{suzuki.getName()}\n"
print "身長：#{suzuki.getHeight()}cm\n"
print "体重：#{suzuki.reduceWeight(3)}kg\n"
puts
print "名前：#{takada.getName()}\n"
print "身長：#{takada.getHeight()}cm\n"
print "体重：#{takada.reduceWeight(5)}kg\n"
>>>>>>> f877c29053bc2a2182f53ff7989a8dfc6030ec5b
