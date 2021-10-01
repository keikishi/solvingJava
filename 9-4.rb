class Day
    attr_accessor  :year, :month, :day

    def initialize(year, month, day)
        @year = year
        @month = month
        @day = day
    end

    def dayOfWeek
        week = ["日", "月", "火", "水", "木", "金", "土"]
        w = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
        puts "#{year}年#{month}月#{day}日#{week[w]}曜日"    
    end
end

print "年："
y = gets.to_i
print "月："
m = gets.to_i
print "日："
d = gets.to_i

daynew = Day.new(y, m, d)
weekday = daynew.dayOfWeek

puts weekday