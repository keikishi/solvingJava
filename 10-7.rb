class MinMax
    def min1(a, b)
        a < b ? a : b
    end

    def min2(a, b, c)
        min = a
        if b < min
            min = b
        elsif c < min
            min = c
        end
        return min
    end

    a = []
    def min3(a)
        i = 0
        mini = a[0]
        while i < a.size
            if a[i] < mini
                mini = a[i]
            end
            i += 1
        end
        return mini
    end

    a = []
    def min4(a)
        min = a.min
        count = 0
        i = 0
        while i = a[i].size
            if a[i] == min
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
end

print "xの値："
x = gets.to_i
print "yの値："
y = gets.to_i
print "zの値："
z = gets.to_i

print "配列aの要素数："
an = gets.to_i
i = 0
a = []
while i < an
    print "a[#{i}]: "
    a[i] = gets.to_i
    i += 1
end

num = MinMax.new
num_min1 = num.min1(x, y)
num_min2 = num.min2(x, y, z)
num_min3 = num.min3(a)

print "x、yの最小値は#{num_min1}です\n"
print "x、y、zの最小値は#{num_min2}です\n"
print "配列aの最小値は#{num_min3}です\n"