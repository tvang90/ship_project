class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :boat_id

      t.timestamps null: false
    end
    add_index :follows, :user_id
    add_index :follows, :boat_id
    add_index :follows, [:user_id, :boat_id], unique: true
  end
end
