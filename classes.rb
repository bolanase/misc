h = Hash.new
h[:first] = "Raghu"
h[:last] = "Betina"
h[:hometown] = "Goshen"


def full(person_hash)
  return "#{person_hash[:first]} #{person_hash[:last]}"
end

class Person
  attr_accessor :first
  attr_accessor :last
  attr_accessor :hometown
  
  def full
    return first + " " + last
  end
end

class Staff < Person
  attr_accessor :position
  attr_accessor :pay_grade
  
  def to_string
   "#{full} is a #{position} at The Starter League."
  end
end

class Student < Person
  attr_accessor :section
  
  def to_string
    full + " is a student in the " + section + " section."
  end
  
  def full
    "#{last}, #{first}"
  end
  
end

p = Staff.new
p.first = "Raghu"
p.last = "Betina"
p.position = "teacher"

q = Staff.new
q.first = "Jeff"
q.last = "Cohen"
q.position = "Chief Instructor"

puts q.to_string
puts p.to_string
