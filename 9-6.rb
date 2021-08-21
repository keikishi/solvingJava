class Human
    attr_reader :name, :height, :weight, :year, :month, :date
    
    def initialize(name, height, weight,year, month, date)
        @name = name
        @height = height
        @weight = weight
        @year = year
        @month = month
        @date = date
    end
    
    def gainWeight(w) 
        weight + w
    end
    
    def reduceWeight(w) 
        weight - w
    end
end

suzuki = Human.new("鈴木二郎", 170, 60, 1980, 10, 20)
takada = Human.new("高田龍一", 166, 72, 1987, 1, 15)

print "名前：#{suzuki.name()}　身長：#{suzuki.height()}cm　体重：#{suzuki.reduceWeight(3)}kg　誕生日：#{suzuki.year()}年#{suzuki.month()}月#{suzuki.date()}日\n"
print "名前：#{takada.name()}　身長：#{takada.height()}cm　体重：#{takada.reduceWeight(5)}kg　誕生日：#{takada.year()}年#{takada.month()}月#{takada.date()}日\n"
