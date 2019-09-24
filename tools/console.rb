require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1 = BoatingTest.new(spongebob, "name", "failed", krabs)
test2 = BoatingTest.new(spongebob, "Defencive driving", "passed", puff)
test3 = BoatingTest.new(patrick, "Test 3", "failed", krabs)
test4 = BoatingTest.new(patrick, "Test 4", "pending", puff)
test5 = BoatingTest.new(patrick, "Test 5", "passed", puff)
 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

