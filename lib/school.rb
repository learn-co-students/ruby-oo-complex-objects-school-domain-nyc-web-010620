# code here!
class School
    attr_accessor :roster

    def initialize(school_name)
       @school_name = school_name
       @roster = Hash.new { |h, k| h[k] = Array.new }
    #    @roster = Hash.new([])
    end

    def add_student(student, grade)
        self.roster[grade] << student
    end
    
    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |k, v|
            v.sort!
        end

        self.roster
    end
end

