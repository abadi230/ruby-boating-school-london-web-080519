class Instructor
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        current_test = BoatingTest.all.find{|test| test.student == student && test.name == test_name && test.instructor == self}
        if current_test
            current_test.status = "passed"
            current_test
        else
            BoatingTest.new(student,test_name, "passed", self) 
        end
    end
    
    def tests
        BoatingTest.all.select{|test| test.instructor == self}
    end
    def fail_student(student, test_name)
        current_test = tests.find{|test| test.student == student && test.name == test_name}
        if current_test
            current_test.status = "failed"
            current_test
        else
            BoatingTest.new(student,test_name, "failed", self)
        end 
    end

end
