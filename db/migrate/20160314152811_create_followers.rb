class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :follower
      t.integer :followee

      t.timestamps null: false
    end
  end
end
