class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :containers
      t.text :cargo
      t.text :origin
      t.decimal :cost
      t.text :destination
      t.text :name

      t.timestamps null: false
    end
  end
end
