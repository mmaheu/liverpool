class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :manufacturer
      t.date :start_date
      t.integer :price

      t.timestamps
    end
  end
end
