class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :title
      t.text :grade
      t.date :start_date
      t.date :end_date
      t.text :days_of_week
      t.text :from_time
      t.text :to_time

      t.timestamps
    end
  end
end
