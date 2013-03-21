class CreateSmasters < ActiveRecord::Migration
  def change
    create_table :smasters do |t|
      t.string :name

      t.timestamps
    end
  end
end
