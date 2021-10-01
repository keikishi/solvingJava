STDIN.set_encoding "Windows-31J"

a = []
def printStringArray(a)
    i = 0
    while i < a.size
        a[i].each_char do |ch|
        print "#{ch}"
        end
        i += 1
        puts
    end
end

print "文字列の個数："
n = gets.to_i

i = 0
sx = []
while i < n
    print "sx[#{i}] = "
    sx << gets.chomp
    i += 1
end

puts printStringArray(sx)