# frozen_string_literal: true

module ConverterHelper
  def currency_names
    @options ||= Currency.pluck(:name).map do |currency|
      "<option value='#{currency}'>#{currency}</option>"
    end.join
  end
end
