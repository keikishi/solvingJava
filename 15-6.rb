print "文字列s1："
s1 = gets.chomp
print "文字列s2："
s2 = gets.chomp

idx = s1.index(s2)

if idx == -1
    print "s1中にs2は含まれません"
else
    puts s1
    i = 0
    while i < idx
        print " "
        i += 1
    end
    print s2
end
