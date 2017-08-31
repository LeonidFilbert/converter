# frozen_string_literal: true

class Currency < ApplicationRecord
  class << self
    def update_currencies
      require 'net/http'

      url = URI.parse('http://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?json')
      req = Net::HTTP::Get.new(url.to_s)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
      body = JSON.parse(res.body)

      destroy_all if body.present?

      create(name: 'Українська гривня', rate: '1')
      body.each do |item|
        create(name: item['txt'], rate: item['rate'])
      end
    end
  end
end
