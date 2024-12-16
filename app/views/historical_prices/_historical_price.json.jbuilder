json.extract! historical_price, :id, :coin_id, :price, :recorded_at, :created_at, :updated_at
json.url historical_price_url(historical_price, format: :json)
