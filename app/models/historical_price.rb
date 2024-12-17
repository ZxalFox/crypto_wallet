# frozen_string_literal: true

class HistoricalPrice < ApplicationRecord
  belongs_to :coin
end
