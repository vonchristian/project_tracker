module Monitoring
  class Projects::WorkDetailsController < ApplicationController
    def new
      @project = Monitoring::Project.find(params[:project_id])
      @work_detail = @project.work_details.build
    end

    def create
      @project = Monitoring::Project.find(params[:project_id])
      @work_detail = @project.work_details.create(work_detail_params)
      if @work_detail.save
        redirect_to @project, notice: "Work Detail saved successfully."
      else
        render :new
      end
    end
    def show
      @work_detail = Monitoring::WorkDetail.find(params[:id])
    end

    private
    def work_detail_params
      params.require(:monitoring_work_detail).permit(:code, :description, :unit, :unit_cost, :quantity, :budget )
    end
  end
end
