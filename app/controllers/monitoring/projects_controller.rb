module Monitoring
  class ProjectsController < ApplicationController
    def index
      @projects = Project.all
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.create(project_params)
      if @project.save
        redirect_to @project, notice: "Project saved successfully."
      else
        render :new
      end
    end

    def show
      @project = Project.find(params[:id])
    end

    private

    def project_params
      params.require(:project).permit(:name, :number, :implementing_office, :contract_amount)
    end
  end
end
