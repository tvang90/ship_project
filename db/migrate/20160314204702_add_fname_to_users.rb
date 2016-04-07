class AddFnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :job_title, :string
  end
end
