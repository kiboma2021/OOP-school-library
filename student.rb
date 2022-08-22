require "./person.rb"
class Student < Person
  def initialize(classroom, name = "Unknown")
    @classroom = classroom
  end

  def play_hooky
    "H¯\(ツ)/¯"
  end
end