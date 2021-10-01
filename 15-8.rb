print "文字列s1："
s1 = gets.chomp
print "文字列s2："
s2 = gets.chomp

balance = s1.casecmp(s2)

if balance < 0
    puts "s1の方が小さい"
elsif balance > 0
    puts "s2の方が小さい"
else
    puts "s1とs2は等しい"
end