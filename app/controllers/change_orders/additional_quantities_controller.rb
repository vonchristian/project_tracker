class ChangeOrders::AdditionalQuantitiesController < ApplicationController
  def new
    @work_detail = WorkDetail.find(params[:work_detail_id])
    @additional_quantity = @work_detail.additional_quantities.build
  end

  def create
    @work_detail = WorkDetail.find(params[:work_detail_id])
    @additional_quantity = @work_detail.additional_quantities.create(additional_quantity_params)
    if @additional_quantity.save
      redirect_to @work_detail, notice: "Additional Quantity saved successfully."
    else
      render :new
    end
  end


  private
  def additional_quantity_params
    params.require(:change_orders_additional_quantity).permit(:quantity, :date, :remarks, :unit_cost, :total_cost )
  end
end
