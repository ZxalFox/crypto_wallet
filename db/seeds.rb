# Existing coin data
spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...", format: :dots)
spinner.auto_spin

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://img.freepik.com/premium-vector/bitcoin-symbol-circle-flat-design-vector-illustration_503038-1479.jpg?w=360'
  },
  {
    description: "DASH",
   acronym: "DASH",
   url_image: "https://krypto-guru.de/wp-content/uploads/2019/05/dash-logo.svg"
  },
  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/256/Ethereum-ETH-icon.png"
  }
]

coin_records = coins.map do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success("(Moedas cadastradas com sucesso!)")

# Adding historical prices for each coin
price_spinner = TTY::Spinner.new("[:spinner] Cadastrando preços históricos...", format: :dots)
price_spinner.auto_spin

coin_records.each do |coin|
  10.times do |i|
    HistoricalPrice.create!(
      coin: coin,
      price: (1000 + rand * 50000).round(2), # Random price between 1000 and 51000
      recorded_at: Time.zone.now - i.days
    )
  end
end

price_spinner.success("(Preços históricos cadastrados com sucesso!)")
