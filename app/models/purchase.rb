class Purchase < ApplicationRecord
  belongs_to :payment
  belongs_to :truck_driver

  validate :fuel_type, :quantity, :rate, :tax, :total, presence: true
end
