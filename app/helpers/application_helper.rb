# frozen_string_literal: true

module ApplicationHelper # rubocop:disable Style/Documentation
  def data_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end

  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Teste"
    end
  end
end
