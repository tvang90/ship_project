class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :fname
      t.text :lname
      t.text :username
      t.text :job_title

      t.timestamps null: false
    end
  end
end
