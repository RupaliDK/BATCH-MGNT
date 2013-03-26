class RemoveStateIdFromBatches < ActiveRecord::Migration
  def up
    remove_column :batches, :state_id
  end

  def down
    add_column :batches, :state_id, :integer
  end
end
