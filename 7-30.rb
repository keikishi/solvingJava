def min(a, b)
    a < b ? a : b
end

def min(a, b, c)
    mini = a
    if b < mini
        mini = b
    elsif c < mini
        mini = c
    end
    return mini
end

a = []
def min(a)
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

print "x、yの最小値は#{min(x, y)}です\n"
print "x、y、zの最小値は#{min(x, y, z)}です\n"
print "配列aの最小値は#{min(a)}です\n"