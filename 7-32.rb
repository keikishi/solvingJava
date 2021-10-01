def printBits(x)
    i = 7
    while i >= 0
        print ((x >> i & 1) == 1) ? "1" : "0"
        i -= 1
    end
end

def printBits2(x)
    i = 15
    while i >= 0
        print ((x >> i & 1) == 1) ? "1" : "0"
        i -= 1
    end
end

def printBits3(x)
    i = 31
    while i >= 0
        print ((x >> i & 1) == 1) ? "1" : "0"
        i -= 1
    end
end

def printBits4(x)
    i = 63
    while i >= 0
        print ((x >> i & 1) == 1) ? "1" : "0"
        i -= 1
    end
end



print "byte 型整数aの値："
a = gets.to_i
print "short 型整数bの値："
b = gets.to_i
print "int 型整数cの値："
c = gets.to_i
print "long 型整数dの値："
d = gets.to_i

print "aのビット： "
puts printBits(a)
print "bのビット： "
puts printBits2(b)
print "cのビット： "
puts printBits3(c)
print "dのビット： "
puts printBits4(d)