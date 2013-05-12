class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :technology

      t.timestamps
    end
  end
end
