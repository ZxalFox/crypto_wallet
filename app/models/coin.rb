class Coin < ApplicationRecord
    # Relacionamento com HistoricalPrice
    has_many :historical_prices, dependent: :destroy
  
    # Validações (se já não existirem)
    validates :description, :acronym, :url_image, presence: true
  end
  