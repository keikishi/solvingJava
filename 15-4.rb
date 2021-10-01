STDIN.set_encoding "Windows-31J"

print "文字列："
str = gets.chomp
reversed_str = ""
str_size = str.length.to_i

while str_size > 0
    reversed_str << str[str_size - 1]
    str_size -= 1
end

print reversed_str