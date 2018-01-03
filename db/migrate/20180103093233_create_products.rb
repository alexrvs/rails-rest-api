class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :name
      t.decimal :price,  precision: 15, scale: 2
      t.decimal :price,  precision: 15, scale: 2
      t.timestamps
    end
  end
end
