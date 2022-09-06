class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :fuel_type
      t.float :quantity
      t.float :rate
      t.float :tax
      t.float :total

      t.timestamps
    end
  end
end
