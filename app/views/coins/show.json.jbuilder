# frozen_string_literal: true

json.partial! "coins/coin", coin: @coin

json.historical_prices @coin.historical_prices do |price|
  json.id price.id
  json.date price.date
  json.price price.price
  json.created_at price.created_at
  json.updated_at price.updated_at
end
