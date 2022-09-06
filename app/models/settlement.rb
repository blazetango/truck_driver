class Settlement < ApplicationRecord

  validate :truck_driver_id, :payment_id, presence: true

  belongs_to :payment
  belongs_to :truck_driver
end
