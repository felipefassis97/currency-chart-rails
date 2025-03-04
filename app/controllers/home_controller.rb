class HomeController < ApplicationController
require 'net/http'
require 'json'

  # USD-BRL
  # EUR-BRL
  # BTC-BRL

  CURRENCIES = [
   { code: 'USD-BRL' },
   { code: 'EUR-BRL' },
   { code: 'BTC-BRL' },
  ]

  def index
    @chart_data = []

    CURRENCIES.each do |currency|
    url = URI("https://economia.awesomeapi.com.br/json/daily/#{currency[:code]}/15")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    hash = {}
    data.each do |entry|
      date = Time.at(entry['timestamp'].to_i).strftime("%d/%m/%Y")
      rate = entry['high']

      hash[date] = rate
      # {'09/11/2024' => 5.69} olha a data e ve o valor
    end

    @chart_data << { name: currency[:code], data: hash }
  end
end
end