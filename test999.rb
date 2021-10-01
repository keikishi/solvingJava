require "date"

module Calendar
  WEEK_TABLE = [
    [99, 99, 99, 99, 99, 99,  1,  2,  3,  4,  5,  6,  7],
    [ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14],
    [ 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
    [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
    [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
    [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99],
  ]

  module_function

  def cal(year, month)
    first = Date.new(year, month, 1)       
    end_of_month = ((first >> 1) - 1).day  
    start = 6 - first.wday                 

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
      buf = ""
      week[start, 7].each do |day|
        if day > end_of_month
          buf << "   "
        else
          buf << sprintf("%3d", day)
        end
      end
      puts buf
    end
  end
end

d = Date.today
print "年："
getyear = gets.to_i
print "月：" 
getmonth = gets.to_i

if getyear == 0 && getmonth == 0 
    Calendar.cal(d.year, d.month)
elsif getyear == 0 && getmonth > 1
    Calendar.cal(d.year, getmonth)
elsif getyear > 1 && getmonth == 0
    i = 1
    while 12 >= i
        Calendar.cal(getyear, i)
        i += 1
    end
else
    Calendar.cal(getyear, getmonth)
end