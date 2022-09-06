json.extract! purchase, :id, :fuel_type, :quantity, :rate, :tax, :total, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
