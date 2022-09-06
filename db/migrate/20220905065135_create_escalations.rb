class CreateEscalations < ActiveRecord::Migration[6.0]
  def change
    create_table :escalations do |t|
      t.integer :payment_id
      t.float :expected_amount

      t.timestamps
    end
  end
end
