# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando BD...') { `rails db:drop` }
      show_spinner('Recriando BD...') { `rails db:create` }
      show_spinner('Migrando BD...') { `rails db:migrate` }
      `rails dev:add_coins`
      `rails dev:add_mining_types`

    else
      puts 'Este comando só pode ser executado em ambiente de desenvolvimento'
    end
  end

  desc 'Cadastra  as moedas'
  task add_coins: :environment do
    show_spinner('Cadastrando moedas...') do
      coin = [{ description: 'Bitcoin', acronym: 'BTC',
                url_image: 'https://i.ibb.co/QQdFMC0/bitcoin-ayron.png' },
              { description: 'Ethereum', acronym: 'ETH',
                url_image: 'https://i.ibb.co/Z1y7mz4/ethereum-ayron.png' },
              { description: 'Tether', acronym: 'USDT',
                url_image: 'https://i.ibb.co/Wy3nZ2T/tether-ayron.png' },
              { description: 'BNB', acronym: 'BNB', url_image: 'https://i.ibb.co/BGPpS2t/bnb-ayron.png' },
              { description: 'Dogecoin', acronym: 'DOGE', url_image: 'https://i.ibb.co/QrJQtJV/dogecoin-ayron.png' },
              { description: 'Solana', acronym: 'SOL', url_image: 'https://i.ibb.co/YfpLm8j/solana-ayron.png' }]

      coin.each do |c|
        Coin.find_or_create_by(c)
      end
    end
  end

  desc 'Configura o ambiente de desenvolvimento'
  task add_mining_types: :environment do
    show_spinner('Cadastrando tipos de mineração...') do
      mining_types = [
        { description: 'Proof of Work', acronym: 'PoW' },
        { description: 'Proof of Stake', acronym: 'PoS' },
        { description: 'Proof of Capacity', acronym: 'PoC' }
      ]

      mining_types.each do |m|
        MiningType.find_or_create_by(m)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = 'Concluído!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("[#{msg_end}]")
  end
end
