a = []
def arraySrchIdx(a, x)
    i = 0
    count = 0
    while i < a.size
        if a[i] == x
            count += 1
        end
        i += 1
    end

    i = a.size
    c = []
    if count > 0
        c = Array.new(count - 1)
    else
        c = 0
    end
    while count >= 1
        if a[i] == x
            c[count -= 1] = i
        end
        i -= 1
    end
    return c
end

print "要素数："
j = gets.to_i

i = 0
x = []
while i < j
    print "x[#{i}] : "
    x << gets.to_i
    i += 1
end

print "探索する値："
n = gets.to_i

y = arraySrchIdx(x, n)

if y = 0
    puts "一致する要素はありません"
else
    puts "一致する要素のインデックス"
    print y
end