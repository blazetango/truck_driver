class TruckDriver < ApplicationRecord
  validate :name, :email, presence: true
end
