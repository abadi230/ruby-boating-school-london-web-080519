class BoatingTest
    @@all = []
    attr_reader :student, :instructor 
    attr_accessor :name, :status

    def initialize(student,boating_test_name, boating_test_status, instructor)
        @student = student
        @name = boating_test_name
        @status = boating_test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
