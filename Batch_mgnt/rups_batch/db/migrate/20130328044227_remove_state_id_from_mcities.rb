class RemoveStateIdFromMcities < ActiveRecord::Migration
  def up
    remove_column :mcities, :state_id
  end

  def down
    add_column :mcities, :state_id, :integer
  end
end
