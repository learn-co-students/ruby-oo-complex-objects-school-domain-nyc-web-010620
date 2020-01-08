class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    def add_student(student_name, grade)
        # ||= means a || a = b, so it sets roster[grade] = to an array
        # if roster[grade] is empty
        roster[grade] ||= []
        roster[grade] << student_name 
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        roster.each {|grade, name|
            roster[grade] = name.sort
        }
    end
end