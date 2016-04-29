class Inventories::StocksController < ApplicationController
  def new
    @inventory = Inventory.find(params[:inventory_id])
    @stock = @inventory.stocks.build
  end

  def create
    @inventory = Inventory.find(params[:inventory_id])
    @stock = @inventory.stocks.create(stock_params)
    if @stock.save
      redirect_to @inventory, notice: "Stock saved successfully."
    else
      render :new
    end
  end

  private
  def stock_params
    params.require(:inventories_stock).permit(:quantity, :unit_price)
  end
end
