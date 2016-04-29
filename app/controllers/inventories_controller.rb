class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end
  def new
    @inventory = Inventory.new
    @inventory.stocks.build
  end

  def create
    @inventory = Inventory.create(inventory_params)
    if @inventory.save
      redirect_to @inventory, notice: "inventory saved successfully."
    else
      render :new
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end
  #
  # def edit
  #   @inventory = inventory.find(params[:id])
  # end
  #
  # def update
  #   @inventory = inventory.find(params[:id])
  #   if @inventory.update(inventory_params)
  #     redirect_to @inventory, notice: 'inventory updated successfully.'
  #   else
  #     render :edit
  #   end
  # end

  private
  def inventory_params
    params.require(:inventory).permit(:description, :unit, stocks_attributes: [:quantity, :unit_price])
  end
end
