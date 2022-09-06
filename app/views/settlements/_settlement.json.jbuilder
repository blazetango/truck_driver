json.extract! settlement, :id, :payment_id, :settle_amount, :status, :created_at, :updated_at
json.url settlement_url(settlement, format: :json)
