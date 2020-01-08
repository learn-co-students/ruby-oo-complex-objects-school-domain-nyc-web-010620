# code here!
# code here!
require 'pry'

class School
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
        # puts "Student name is #{student_name}"
        # puts "Grade is #{grade}"
        if @roster[grade]
            # puts "already here!"
            @roster[grade] += [student_name]
        else
            # puts "not here yet!"
            @roster[grade] = [student_name]
        end

    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster.each_value { |students| students.sort!}
    end
end

#binding.pry
