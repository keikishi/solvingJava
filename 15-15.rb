require 'date'
def monthly_calendar(this_day = Date.today) 
    first_day = Date.new(this_day.year,this_day.month,1)
    start_day = first_day - first_day.strftime('%w').to_i

    puts this_day.strftime('%B %Y').center(21)
    puts "\sSu\sMo\sTu\sWe\sTh\sFr\sSa"
    while start_day.month <= first_day.month
        if start_day.month != first_day.month
            print "\s\s\s"
        elsif start_day.strftime('%u') == "6"
            print "\s" + start_day.strftime('%e') + "\n"
        else
            print "\s" + start_day.strftime('%e')
       end
        start_day += 1
    end
end

puts monthly_calendar(Date.new(2020, 1))