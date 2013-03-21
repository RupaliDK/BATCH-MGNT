class CreateMcities < ActiveRecord::Migration
  def change
    create_table :mcities do |t|
      t.text :name
      t.text :state

      t.timestamps
    end
  end
end
