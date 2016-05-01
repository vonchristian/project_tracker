class WorkDetails::AccomplishmentsController < ApplicationController
  def new
    @work_detail = WorkDetail.find(params[:work_detail_id])
    @accomplishment = @work_detail.accomplishments.build
  end

  def create
    @work_detail = WorkDetail.find(params[:work_detail_id])
    @accomplishment = @work_detail.accomplishments.create(accomplishment_params)
    if @accomplishment.save
      redirect_to @work_detail, notice: "Accomplishment saved successfully."
    else
      render :new
    end
  end

  def edit
    @accomplishment = Accomplishment.find(params[:id])
  end

  def update
    @accomplishment = Accomplishment.find(params[:id])
    @accomplishment.update(accomplishment_params)
    if @accomplishment.save
      redirect_to work_detail_path(@accomplishment.work_detail), notice: "Accomplishment updated successfully."
    else
      render :edit
    end
  end 


  private
  def accomplishment_params
    params.require(:accomplishment).permit(:quantity, :date, :remarks )
  end
end
