require 'pry'

class School
    attr_accessor :roster, :student_name, :grade, :school_name  

    def initialize(name)
        @name = name 
        @roster = {}
        # @roster = Hash.new {|h, k| h[k] = Array.new}  
    end 

    def add_student(student_name, grade)
        # self.roster[grade] << student_name

    #    binding.pry
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade] = []
            @roster[grade] << student_name
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        self.roster.each do |k, v|
            v.sort!
        end 

        self.roster
    end 

end 

