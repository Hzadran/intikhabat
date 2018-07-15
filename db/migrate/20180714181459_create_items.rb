class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :itm_name
      t.integer :price
      t.string :brought_by
      t.date :date

      t.timestamps
    end
  end
end
