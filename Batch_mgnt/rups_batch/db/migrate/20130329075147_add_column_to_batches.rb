class AddColumnToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :from_time, :time
    add_column :batches, :to_time, :time
  end
end
