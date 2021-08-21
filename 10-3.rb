class ID
    @@id = 0
    @@counter = 0

    def initialize
        @@id += 1
        @@counter += 1
    end
    
    def getID()
        return @@id
    end

    def getCounter()
        return @@counter
    end
end

ID_a = ID.new
print "ID_a：#{ID_a.getID()}\n"

ID_b = ID.new
print "ID_b：#{ID_b.getID()}\n"
print "ID_a：#{ID_a.getID()}\n"

print "最後に与えた識別子：#{ID_a.getCounter()}\n"
print "最後に与えた識別子：#{ID_b.getCounter()}\n"
