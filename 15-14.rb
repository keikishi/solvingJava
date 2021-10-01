a = []
i = 0
while i < ARGV.size
    a << ARGV[i].to_f
    i += 1
end

puts a.sum