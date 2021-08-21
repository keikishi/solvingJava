class Human
    attr_accessor :name, :height, :weight
  
    def initialize(name, height, weight)
      @name = name
      @height = height
      @weight = weight
    end
  
    def introduce
      puts '私の名前は' + name + 'です'
      puts '体重は' + weight.to_s + 'です'
      puts '身長は' + height.to_s + 'です'
    end
  end
  
  taro = Human.new('太郎', 180, 75)
  hanako = Human.new('花子', 160, 55)
  ichiro = Human.new('イチロー', 170, 65)
  
  humanlist = [taro, hanako, ichiro]
  
  humanlist.each do |human|
    puts human.name
  end
  
  humanlist2 = [[taro, hanako], [taro, ichiro]]
  humanlist2.each do |humans|
    puts humans[0].name
    puts humans[1].name
  end
