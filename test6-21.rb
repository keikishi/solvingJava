print "クラス数："
x = gets.to_i

i = 0
cnum = []
y = []
while i < x
    print "#{i + 1}組の人数：" 
    cnum << gets.to_i
    j = 0
    point = []
    while j < cnum[i]
        print "#{i + 1}組#{j + 1}番の点数："
        point << gets.to_i
        j += 1
    end
    y << point
    i += 1
end

print "組　合計　平均\n"
i = 0
while i < y.size
    print "#{i + 1}組 #{y[i].sum}    #{(y[i].sum/cnum[i].size)}\n"
    i += 1
end

puts 