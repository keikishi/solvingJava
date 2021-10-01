a = Array.new() { Array.new() }
def aryClone2(a)
    c = Array.new(a.size) { Array.new(a.size) }

    i = 0
    while i < a.size
        j = 0
        while j < a[i].size
            c[i][j] = a[i][j]
            j += 1
        end
        i += 1
    end
    return c
end

m = []
def printMatrix(m)
    i = 0
    while i < m.size
        j = 0
        while j < m[i].size
        print "#{m[i][j]} "
        j += 1
        end
    i += 1
    puts
    end
end

print "行列の行数："
height = gets.to_i
print "行数の列数："
width = gets.to_i

a = Array.new(height) { Array.new(width) }
i = 0
while i < a.size
    j = 0
    while j < a[i].size
        print "a[#{i}][#{j}]："
        a[i][j] = gets.to_i
        j += 1
    end
    i += 1
end

c = aryClone2(a)
puts "行列a"
print printMatrix(a)
puts "行列aの複製"
print printMatrix(c)