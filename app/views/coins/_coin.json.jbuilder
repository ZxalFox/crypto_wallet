# frozen_string_literal: true

json.extract! coin, :id, :description, :acronym, :url_image, :created_at, :updated_at
json.url coin_url(coin, format: :json)

json.historical_prices coin.historical_prices do |historical_price|
  json.id historical_price.id
  json.date historical_price.date
  json.price historical_price.price
  json.created_at historical_price.created_at
  json.updated_at historical_price.updated_at
end
