require "pry"

class School 
  
  def initialize(roster)
    @roster = Hash.new([])
  end 
  
  def roster 
    @roster
  end
  
  def add_student(student_name,grade)
    @roster[grade] += [student_name]
  end 
  
  def grade(grade)
    @roster.each do |k,v|
       if  grade == k 
        return v 
      end 
    end 
  end 
  
  def sort 
  new_hash = {}
    @roster.each do |k,v|
        new_hash[k] = v.sort 
    end 
    new_hash
  end 
    
end 