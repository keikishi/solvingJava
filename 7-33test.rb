print "行数："
x = gets.to_i

i = 0
b = []
while i < x
    print "#{i}行目の列数：" 
    b << gets.to_i
    i += 1
end

puts "各要素の値を入力せよ。"
i = 0
y = []
while i < x
    j = 0
    ret = []
    while j < b[i]
        print  "a[#{i}][#{j}]:  "
        ret << gets.to_i
        j += 1
    end
    y << ret
    i += 1
end

puts "配列Cの各要素の値は次のようになっています。"
def printArray
i = 0
while i < y.size
    j = 0
    while j < y[i].size
      print "#{y[i][j]}"
      j += 1
    end
    puts
    i += 1
end