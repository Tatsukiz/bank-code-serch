class Search::BranchesController < ApplicationController
  before_action :set_bank

  def index
    @branches = @bank.branches.search(params.require(:query))

    render json: @branches
  end

  private
    def set_bank
      @bank = Bank.find_by(code: params[:bank_code])
    end
end
