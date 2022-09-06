class CreateTruckDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :truck_drivers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.boolean :pay_later

      t.timestamps
    end
  end
end
