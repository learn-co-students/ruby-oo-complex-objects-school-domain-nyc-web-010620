# code here!

class School
  attr_accessor :roster
  
  def initialize(empty)
    @roster = Hash.new([])
  end
  
  def add_student(student, grade)
    @roster[grade] += [student]
  end
  
  def grade(grade)
    output = []
    
    @roster.each{ |key, value|
      if key == grade
        output << roster[key]
      end
    },
    return output.flatten
  end  
  
  def sort()
    return roster.sort.to_h
  end
end
  