print "文字列s1："
s1 = gets.chomp
print "文字列s2："
s2 = gets.chomp

if s1 == s2
    puts "s1 == s2　です"
else
    puts "s1 != s2　です"
end

if s1.equal?(s2)
    puts "s1とs2の中身は等しい"
else
    puts "s1とs2の中身は等しくない"
end