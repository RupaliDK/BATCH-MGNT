class StudentsGrades < ActiveRecord::Migration
  def change
    create_table :students_grades, :id => false do |t|
      t.references :students
      t.references :grades
    end
 end
end
