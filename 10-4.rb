class ID
    @@id = 0
    @@counter = 0
    @@step = 1

    def initialize
        @@id += @@step
    end
    
    def getID()
        return @@id
    end

    def getStep()
        return @@step
    end

    def setStep(s)
        @@step = (s >= 1) ? s : 1
        @@id += @@step - 1  
    end
end

ID_a = ID.new
print "ID_a：#{ID_a.getID()}\n"
ID_b = ID.new
print "ID_b：#{ID_b.getID()}\n"
ID_c = ID.new
print "ID_c：#{ID_c.getID()}\n"
ID_d = ID.new
puts ID_d.setStep(4)
print "ID_d：#{ID_d.getID()}\n"
ID_e = ID.new
print "ID_e：#{ID_e.getID()}\n"
ID_f = ID.new
print "ID_f：#{ID_f.getID()}\n"
maxID = ID_f.getID()
print "最後に与えた識別子：#{maxID}\n"
print "次回に与える識別子：#{maxID + ID_f.getStep()}\n"