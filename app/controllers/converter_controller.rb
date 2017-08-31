class ConverterController < ApplicationController
  def index; end

  def convert
    current         = Currency.find_by(name: params[:current])
    wanted          = Currency.find_by(name: params[:wanted])
    change_currency = params[:changeCurrency].to_f
    @result         = ( change_currency / wanted.rate ) * current.rate

    respond_to :js
  end
end
