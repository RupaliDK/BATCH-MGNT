class RemoveColumnsToStudents < ActiveRecord::Migration
  def up
    remove_column :students, :state
    remove_column :students, :city
  end

  def down
    add_column :students, :city, :string
    add_column :students, :state, :string
  end
end
