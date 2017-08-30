class Currency < ApplicationRecord
  class << self
    def update_currencies
      destroy_all

      require 'net/http'

      url = URI.parse('http://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?json')
      req = Net::HTTP::Get.new(url.to_s)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }

      JSON.parse(res.body).each do |item|
        create(name: item.cc, rate: item.rate)
      end
    end
  end
end
