class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades, :id => false do |t|
      t.text :title
      t.text :description
      t.references :students
    end
  end
end
