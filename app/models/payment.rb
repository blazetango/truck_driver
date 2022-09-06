class Payment < ApplicationRecord
  belongs_to :truck_driver
  belongs_to :purchase
  has_one :escalation

  enum payment_type: { credit_card: 0, bank_account: 1, auto_pay: 2 }
end
