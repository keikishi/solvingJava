a = []
def arrayRmvOf(a, idx)
    if idx < 0 || idx >= a.size
        return a.clone
    else
        c = Array.new(a.size - 1)
        i = 0
        while i < idx
            c[i] = a[i]
            i += 1
        end
        while i < a.size - 1
            c[i] = a[i - 1]
            i += 1
        end
        return c
    end
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

print "削除する要素のインデックス："
n = gets.to_i

y = arrayRmvOf(x, n)

i = 0
while i < y.size
    puts "y[#{i}] = #{y[i]}"
    i += 1
end