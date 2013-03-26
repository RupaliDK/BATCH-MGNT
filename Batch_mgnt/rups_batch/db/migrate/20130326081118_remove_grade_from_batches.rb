class RemoveGradeFromBatches < ActiveRecord::Migration
  def up
    remove_column :batches, :grade
  end

  def down
    add_column :batches, :grade, :text
  end
end
