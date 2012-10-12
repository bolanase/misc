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

p = Person.new
p.first = "Raghu"
p.last = "Betina"
p.hometown = "Goshen"

puts p.full





