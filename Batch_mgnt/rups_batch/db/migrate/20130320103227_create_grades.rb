class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.text :title
      t.text :description
    end
  end
end
