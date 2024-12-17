# frozen_string_literal: true

json.array! @historical_prices, partial: "historical_prices/historical_price", as: :historical_price
