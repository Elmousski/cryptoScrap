class StaticController < ApplicationController
  def index
  end

   def show
    @value = Coin.find(params[:coin][:id]).value
   end


end
