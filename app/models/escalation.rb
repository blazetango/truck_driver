class Escalation < ApplicationRecord
  belongs_to :payment
  belongs_to :truck_driver
end
