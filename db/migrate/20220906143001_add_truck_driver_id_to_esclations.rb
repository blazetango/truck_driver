class AddTruckDriverIdToEsclations < ActiveRecord::Migration[6.0]
  def change
    add_column :escalations, :truck_driver_id, :integer
  end
end
