class Student
    @@all = []
    @@boating_test
    attr_accessor :first_name

    def initialize(first_name)
        @first_name = first_name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test_name, boating_test_status,instructor)
        
        BoatingTest.new(self.first_name, boating_test_name,boating_test_status,instructor)
    end
    
    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def grade_percentage
        total = boating_test_status.count
        pass = boating_test_status.find_all{|test| test == "pass"}
        # result = 0.0
        result = (pass.count.to_f / total.to_f) * 100
        
        result.floor(2)
        
    end

    def boating_test_status
        BoatingTest.all.select{|test| 
        test.student == self}.map {|boating_test| 
        boating_test.status}
    end

    # return an array of all the instructors that a student has taken
    #  a test with
    def instructors
        BoatingTest.all.select{|test| test.student == self}.map{|test| test.instructor}
    end
end
