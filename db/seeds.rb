# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success("(Moedas cadastradas com sucesso!)")

