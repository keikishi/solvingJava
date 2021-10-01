a = []
def printArray(a)
    i = 0
    while i < a.size
        print "#{a[i]} "
        i += 1
    end
    print a[a.size - 1]
    puts 
end

a = Array.new() {Array.new()}
def printArray2(a)
    width = Array.new(a.size) {Array.new(a.size)}
    max = 0
    i = 0
    while i < a.size
        if a[i].size > max
            max = a[i].size
        end
        i += 1
    end

    maxWidth = Array.new(max)
    i = 0
    while i < a.size
        j = 0
        while j < a[i].size
            value = a[i][j]
            width[i][j] = (value < 0) ? 1 : 0
            while value != 0
                width [i][j] += 1
                value /= 10
            end

            if width[i][j] > maxWidth[j]
                maxWidth[j] = width[i][j]
            end
        end
    end

    i = 0
    while i < a.size
        j = 0
        while j < a[i].size - 1
            print a[i][j]
            k = 0
            while maxWidth[j] - width[i][j] >= k
                puts
                k += 1
            end
            j += 1
        end
        puts a[i][a[i].size - 1]
        i += 1
    end
end

print "1次元配列xの要素数："
xn = gets.to_i

i = 0
m = []
while i < xn
    print "x[#{i}]: "
    m << gets.to_i
    i += 1
end

print "2次元配列yの行数："
x = gets.to_i

i = 0
b = []
while i < x
    print "#{i}行目の列数："
    b << gets.to_i
    i += 1
end

puts "各要素の値を入力せよ"
i = 0
y = []
while i < x
    j = 0
    ret = []
    while j < b[i]
        print "y[#{i}][#{j}] :"
        ret << gets.to_i
        j += 1
    end
    y << ret
    i += 1
end

print "1次元配列x："
puts printArray(m)
print "2次元配列y："
puts printArray(y)
