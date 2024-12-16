class CreateHistoricalPrices < ActiveRecord::Migration[8.0]
  def change
    create_table :historical_prices do |t|
      t.references :coin, null: false, foreign_key: true
      t.decimal :price, precision: 15, scale: 2
      t.datetime :recorded_at

      t.timestamps
    end
  end
end
