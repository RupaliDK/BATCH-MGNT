class ChangeColumnStringToCityInStudents < ActiveRecord::Migration
  def up
    rename_column "students","string","city"
  end

  def down
  end
end
