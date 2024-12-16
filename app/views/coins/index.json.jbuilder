# frozen_string_literal: true

json.array! @coins, partial: "coins/coin", as: :coin do |coin|
    json.historical_prices coin.historical_prices do |price|
      json.id price.id
      json.date price.date
      json.price price.price
      json.created_at price.created_at
      json.updated_at price.updated_at
    end
  end
  