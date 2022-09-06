class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.bigint :card_no
      t.string :expiry

      t.timestamps
    end
  end
end
