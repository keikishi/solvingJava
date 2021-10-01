month = [0,31,28,31,30,31,30,31,31,30,31,30]



day = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
a = 2
num = ARGV[0].to_i

for i in 0..num-1
  a += month[i]
end

first = a % 7

for i in 0..6
  print day[i], " "
end

print "\n"

space = " "

nextd = 0

for i in 0..6
  if i <= first
    printf "%3s ", space
  else
    printf "%3d ", i - first
  end
  nextd = i - first + 1
end

print "\n"

d = nextd
while d <= month[num]
  for j in 0..6
    if d + j <= month[num]
      printf "%3d ", d + j
    else
      printf "%3s ", space
    end
  end
  print "\n"
  d += 7
end