class ID
    @@id = 0

    def initialize
        @@id += 1
    end
    
    def getID()
        return @@id
    end
end

ID_a = ID.new
print "ID_a：#{ID_a.getID()}\n"

ID_b = ID.new
print "ID_b：#{ID_b.getID()}\n"
print "ID_a：#{ID_a.getID()}\n"