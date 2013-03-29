class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :middle_name
      t.text :email
      t.text :mobile
      t.text :alternate_mobile
      t.string :state
      t.text :address
      t.text :zip_code
      t.text :grade
      t.date :enrollment_date
	t.references :grades
	
      t.timestamps
    end
  end
end
