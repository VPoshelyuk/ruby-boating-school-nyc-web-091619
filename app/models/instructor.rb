class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def check_student(student, test_name)
        BoatingTest.all.select do |boating_test|
            boating_test.student == student and boating_test.name == test_name
            # binding.pry
        end
    end

    def pass_student(student, test_name)
        if check_student(student, test_name).any?
            # binding.pry
            check_student(student, test_name)[0].status = "passed"
            check_student(student, test_name)[0]
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

    def fail_student(student, test_name)
        if check_student(student, test_name).any?
            # binding.pry
            check_student(student, test_name)[0].status = "failed"
            check_student(student, test_name)[0]
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end
end
