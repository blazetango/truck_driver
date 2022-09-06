class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :payment_type
      t.float :amount
      t.integer :truck_driver_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
