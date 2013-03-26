class AddSmasterIdToMcities < ActiveRecord::Migration
  def change
    add_column :mcities, :smaster_id, :integer
  end
end
