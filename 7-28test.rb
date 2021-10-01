x = [[1,2,3],[4,5,6]]
y = [[6,3,4],[5,1,2]]
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

print z