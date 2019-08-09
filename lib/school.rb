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
end