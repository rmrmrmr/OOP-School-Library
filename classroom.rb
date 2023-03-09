class Classroom
  attr_reader :students
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end

  def students_names
    @students.each_with_index { |x, i| puts "Student #{i+1} name is #{x.name}"}
  end
end