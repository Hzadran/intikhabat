class CreateHolders < ActiveRecord::Migration[5.0]
  def change
    create_table :holders do |t|
      t.string :f
      t.string :father_nam
      t.string :tazkira_number
      t.string :mobile_number
      t.string :sex
      t.text :address

      t.timestamps
    end
  end
end
