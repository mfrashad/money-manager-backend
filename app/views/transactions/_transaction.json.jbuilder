json.extract! transaction, :id, :user_id, :date, :time, :role, :category, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
