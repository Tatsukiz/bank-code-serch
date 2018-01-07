class Search::BanksController < ApplicationController

  def index
    @banks = Bank.search(params.require(:query))

    render json: @banks
  end
end
