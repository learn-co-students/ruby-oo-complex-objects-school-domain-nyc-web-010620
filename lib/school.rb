# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student, grade)
       # if roster[grade] is undefined/false, then:
       # evaluate [] and set roster[grade] into []
       # if roster[grade] is true, then don't evaluate []
       
        roster[grade] ||= []
       
       # assign student to that grade
        roster[grade] << student
    end

    def grade(grade)
        roster[grade] 
    end

    def sort
        sorted = {}

        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end