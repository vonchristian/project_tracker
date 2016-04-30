class Projects::WorkDetailsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @work_detail = @project.work_details.build
  end

  def create
    @project = Project.find(params[:project_id])
    @work_detail = @project.work_details.create(work_detail_params)
    if @work_detail.save
      redirect_to @project, notice: "Work Detail saved successfully."
    else
      render :new
    end
  end

  private
  def work_detail_params
    params.require(:work_detail).permit(:code, :description, :unit, :unit_cost, :quantity)
  end
end  
