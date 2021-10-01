def absolute(x)
    return x >= 0 ? x : -x
end

def absolute2(x)
    return x >= 0 ? x : -x
end

def absolute3(x)
    return x >= 0 ? x : -x
end

def absolute4(x)
    return x >= 0 ? x : -x
end

print "int 型整数aの値："
a = gets.to_i
print "long 型整数bの値："
b = gets.to_i
print "float 型整数cの値："
c = gets.to_f
print "double 型整数dの値："
d = gets.to_f

print "aの絶対値は#{absolute(a)}です\n"
print "bの絶対値は#{absolute2(b)}です\n"
print "cの絶対値は#{absolute3(c)}です\n"
print "dの絶対値は#{absolute4(d)}です\n"