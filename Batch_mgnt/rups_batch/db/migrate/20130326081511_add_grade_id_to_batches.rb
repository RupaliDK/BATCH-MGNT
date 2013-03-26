class AddGradeIdToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :grade_id, :integer
  end
end
