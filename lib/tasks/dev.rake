# frozen_string_literal: true

namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(`rails db:drop`) }

      show_spinner("Criando BD...") { %x(`rails db:create`) }

      show_spinner("Executando Migrations...") { %x(`rails db:migrate`) }

      show_spinner("Executando Seeds...") { %x(`rails db:seed`) }

    else
      puts "Este comando só pode ser executado em ambiente de desenvolvimento"
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :dots)
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
