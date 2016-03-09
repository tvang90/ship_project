class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :containers

      t.timestamps null: false
    end
  end
end
