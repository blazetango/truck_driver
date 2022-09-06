json.extract! escalation, :id, :payment_id, :expected_amount, :created_at, :updated_at
json.url escalation_url(escalation, format: :json)
