class RemoveStateFromMcities < ActiveRecord::Migration
  def up
    remove_column :mcities, :state
  end

  def down
    add_column :mcities, :state, :text
  end
end
