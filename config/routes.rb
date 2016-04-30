Rails.application.routes.draw do
  resources :projects, except:[:destroy] do
    resources :work_details, only: [:new, :create], module: :projects
  end
  resources :work_details, only:[:show]
   get 'dashboards/index', as: 'dashboard'
end
