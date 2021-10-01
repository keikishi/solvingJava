r = ARGV[0].to_f
y = (r * 2 * Math::PI).round(2)
z = (r * r * Math::PI).round(2)

print "半径#{r}の円周は#{y}で面積は#{z}です" 