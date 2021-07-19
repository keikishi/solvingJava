print "要素数："
n = gets.to_i

a = Array.new()
i = 0
while i < n
    b = 1 + rand(10)
        if a.include?(b)
            next
        end
    a << b
    i += 1
end

j = 0
while j < n
    puts "a[#{j}] = #{a[j]}"
    j += 1
end
