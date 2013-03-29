class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.text :title
      t.text :description
      t.references :students

      t.timestamps
    end
  end
end
