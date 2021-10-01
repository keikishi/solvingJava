x = Array.new(2) { Array.new(3) }
y = Array.new(2) { Array.new(3) }
z = Array.new(2) { Array.new(3) }

def addMatrix(x, y, z)
    if x.size != y.size || y.size != z.size
        return false
    end

    i = 0
    while i &lt; x.size
        if x[i].size != y[i].size || y.size != z.size
            return false
        end
        i += 1
    end

    i = 0
    while i < x.size
        j = 0
        while j < x[i].size
            z[i][j] = x[i][j] + y[i][j]
            j += 1
        end
        i += 1
    end
    return true
end

i = 0
m = Array.new() {Array.new()}
while i &lt; m.size
    j = 0
    while j &lt; m[i].size
        print "#{m[i][j]}   "
        j += 1
    end
    i += 1
end

a = [[1,2,3],[4,5,6]]
b = [[6,3,4],[5,1,2]]
c = Array.new(2) {Array.new(3)}

if addMatrix(a, b, c)
    print "行列a : #{a}\n"
    print "行列b : #{b}\n"
    print "行列c : #{c}\n"
end