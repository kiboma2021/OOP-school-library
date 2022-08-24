require './person'
class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true, id: nil)
    super(age, name, parent_permission: parent_permission, id: id)
    @classroom = classroom
  end

  def play_hooky
    'H¯\(ツ)/¯'
  end

  def classroom=(new_classroom)
    # only set classroom if we get a new_classroom of type Classroom
    if new_classroom.is_a?(Classroom)
      # remove student from classroom if we get a new classroom
      @classroom.remove_student(self) unless @classroom.nil? || @classroom == new_classroom

      @classroom = new_classroom
      @classroom.add_student(self) unless @classroom.students.include?(self)
    else
      @classroom = nil
    end
  end  

end
