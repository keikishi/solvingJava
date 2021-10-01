class Period
    attr_accessor :year, :month, :date
    
    def initialize(year, month, date)
        @year = year
        @month = month
        @date = date
    end

    def to_s
        "#{year}年#{month}月#{date}日"
    end
end

period_meiji_from = Period.new(1868, 1, 25)
period_meiji_to = Period.new(1912, 7, 30)
period_meiji = "#{period_meiji_from}~#{period_meiji_to}"
puts "明治＝#{period_meiji}"