class AddJobIdToBoat < ActiveRecord::Migration
  def change
    add_column :boats, :job_id, :integer
  end
end
