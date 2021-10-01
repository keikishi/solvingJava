x = Array.new() { Array.new() }
y = Array.new() { Array.new() }

def addMatrix(x, y)
    z = Array.new(x.size) { Array.new(x.size) }
    i = 0
    while i < x.size
        j = 0
        while j < x[i].size
            z[i][j] = x[i][j] + y[i][j]
            j += 1
        end
        i += 1
    end
    return z
end

m = []
def printMatrix(m)
    i = 0
    while i < m.size
        j = 0
        while j < m[i].size
            printf "#{m[i][j]} "
            j += 1
        end
        puts
        i += 1
    end
end

print "行列の行数："
height = gets.to_i
print "行列の列数："
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

b = Array.new(height) { Array.new(width) }
i = 0
while i < b.size
    j = 0
    while j < b[i].size
        print "[b#{i}][#{j}]："
        b[i][j] = gets.to_i
        j += 1
    end
    i += 1
end

c = addMatrix(a, b)
puts "行列a"
print printMatrix(a)
puts "行列b"
print printMatrix(b)
puts "行列c"
print printMatrix(c)