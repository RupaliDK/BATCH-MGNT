class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :address_line1, :text
    add_column :students, :address_line2, :text
    add_column :students, :qualifies_with, :text
    add_column :students, :sponsor, :boolean
  end
end
