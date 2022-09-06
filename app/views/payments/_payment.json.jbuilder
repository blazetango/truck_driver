json.extract! payment, :id, :payment_type, :amount, :truck_driver_id, :purchase_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
