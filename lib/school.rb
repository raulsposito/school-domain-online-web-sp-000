# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, level)
    roster[level] ||= []
    roster[level] << name
  end
  
  def grade(level)
    roster.detect do |x, y|
      if x == level
        return y
      end
    end
  end
  
  def sort 
    new_hash = {}
    roster.each do |x, y|
      new_hash[x] = y.sort 
    end
    new_hash
  end
  def sort 
  nu_hash = {}
  roster.each do |x, y| 
    nu_hash[x] = y.sort 
  end 
  nu_hash
end  
end
