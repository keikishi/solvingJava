a = []
b = []
def aryExchng (a, b)
    i = 0
    n = a.size < b.size ? a.size : b.size
    while i < n
        t = a[i]
        a[i] = b[i]
        b[i] = t
        i += 1
    end
end

print "配列aの要素数："
na = gets.to_i

i = 0
while i < na 
    print "a[#{i}] : "
    a << gets.to_i
    i += 1
end

print "配列bの要素数："
nb = gets.to_i

n = 0
while n < nb
    print "b[#{n}] : "
    b << gets.to_i
    n += 1
end

aryExchng(a, b)

puts "配列aとbの全要素を交換しました。"
i = 0
while i < na
    puts "a[#{i}] = #{a[i]}"
    i += 1
end

n = 0
while n < nb
    puts "b[#{n}] = #{b[n]}"
    n += 1
end