class CreateEmploys < ActiveRecord::Migration[5.0]
  def change
    create_table :employs do |t|
      t.string :emp_name
      t.string :emp_father_name
      t.string :sallary
      t.string :designation
      t.date :starting_date
      t.integer :mobile_number

      t.timestamps
    end
  end
end
