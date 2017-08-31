class ConverterController < ApplicationController
  def index; end

  def convert
    current         = Currency.find(name: params[:current])
    wanted          = Currency.find(name: params[:wanted])
    change_currency = params[:changeCurrency].to_i
    @result         = (change_currency / current.rate) * wanted.rate

    respond_to :js
  end
end
