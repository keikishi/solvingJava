puts "整数を加算します"

total = []
i = 1
isBreak = 99999
while 10 >= i
    puts "■第 #{i} グループ"
    j = 0
    while 10 >= j
        print "整数："
        t = gets.to_i
        break if t == 88888
        break if t == 99999
        total << t
        j += 1
    end
    break if t == 99999
    i += 1
end

print "合計は #{total.inject(:+)} です"
