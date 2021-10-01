a = []
def arrryClone(a)
    c = Array.new(a)
    i = 0
    while i < c.size
        c[i] = a[i]
        i += 1
    end
    return c
end

print "要素数："
m = gets.to_i

i = 0
x = []
while i < m
    print "x[#{i}] : "
    x << gets.to_i
    i += 1
end

y = arrryClone(x)

puts "配列xのコピーyを作成しました"
i = 0
while i < m
    puts "y[#{i}] = #{y[i]}"
    i += 1
end
print y