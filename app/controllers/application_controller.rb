class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  def after_sign_in_path_for(current_user)
  if current_user.is_a?(User) && current_user.project_engineer?
    monitoring_projects_url
  end
end
end
