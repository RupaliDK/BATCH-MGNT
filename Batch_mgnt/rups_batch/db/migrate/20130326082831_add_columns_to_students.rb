class AddColumnsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :smaster_id, :integer
    add_column :students, :mcitie_id, :integer
  end
end
