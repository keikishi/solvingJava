s1 = nil
s2 = ""
s3 = "ABC"
s4 = "IJK"
s5 = "ABC"
s5 = "XYZ"

print "文字列s1 = #{s1}\n"
print "文字列s2 = #{s2}\n"
print "文字列s3 = #{s3}\n"
print "文字列s4 = #{s4}\n"
print "文字列s5 = #{s5}\n"
print "s3とs4は同じ文字列リテラルを参照#{(s3 == s4) ? "している" : "していない"}"  