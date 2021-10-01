STDIN.set_encoding "Windows-31J"
print "文字列："
str = gets.chomp
str_r = str.chars

str_size = str_r.size
i = 0
while str_size > 0
    puts "s[#{i}] = #{str_r[i]} #{str_r[i].ord}"
    str_size -= 1
    i += 1
end