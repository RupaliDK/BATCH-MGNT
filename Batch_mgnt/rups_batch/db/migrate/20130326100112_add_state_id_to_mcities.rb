class AddStateIdToMcities < ActiveRecord::Migration
  def change
    add_column :mcities, :state_id, :integer
  end
end
