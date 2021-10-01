def check(x)
    i = 0
    while i < ARGV.size
        puts "argv[#{i}] = #{ARGV[i]}"
        i += 1
    end 
end
puts check(ARGV[0].to_s)