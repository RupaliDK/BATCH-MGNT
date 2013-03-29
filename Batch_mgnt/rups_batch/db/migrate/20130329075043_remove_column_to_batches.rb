class RemoveColumnToBatches < ActiveRecord::Migration
  def up
    remove_column :batches, :from_time
    remove_column :batches, :to_time
  end

  def down
    add_column :batches, :to_time, :text
    add_column :batches, :from_time, :text
  end
end
