def printDouble(x, y, w)
    puts sprintf("%#{w}.#{x}f", y)
end

print "実数値："
y = gets.to_f
print "小数部桁数："
x = gets.to_i
print "表示全桁数："
w = gets.to_i

puts pointDouble(x, y, w)
