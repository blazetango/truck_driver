class CreateSettlements < ActiveRecord::Migration[6.0]
  def change
    create_table :settlements do |t|
      t.integer :payment_id
      t.float :settle_amount
      t.integer :status

      t.timestamps
    end
  end
end
