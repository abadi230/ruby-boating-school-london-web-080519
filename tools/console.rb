require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")


puff= Instructor.new("Ms.Puff")

krabs= Instructor.new("Mr.Krabs")

boatingT1= BoatingTest.new(spongebob, "test 1", "passed", puff)
boatingT2= BoatingTest.new(spongebob, "test 2", "passed", krabs)
boatingT3= BoatingTest.new(spongebob, "test 3", "failed", puff)
boatingT4= BoatingTest.new(spongebob, "test 4", "passed", krabs)
# boatingT5= BoatingTest.new(spongebob, "test 5", "failed", puff)
# boatingT6= BoatingTest.new(spongebob, "test 6", "failed", krabs)
# boatingT7= BoatingTest.new(spongebob, "test 7", "failed", puff)
# boatingT8= BoatingTest.new(spongebob, "test 8", "failed", puff)
# boatingT8= BoatingTest.new(spongebob, "test 9", "failed", krabs)
boatingT9= BoatingTest.new(patrick, "test 1", "failed", puff)

# puff.passed_student(spongebob,"test 1")
binding.pry
0 #leave t10is here to ensure binding.pry isn't the last line10

