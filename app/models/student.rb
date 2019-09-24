class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def grade_percentage
        passed_tests = BoatingTest.all.select{|boating_test| boating_test.status == "passed" and boating_test.student == self}.length
        all_tests = BoatingTest.all.select{|boating_test| boating_test.status and boating_test.student == self}.length
        # binding.pry
        percentage = (passed_tests/all_tests.to_f * 100).round(2)
    end
end
