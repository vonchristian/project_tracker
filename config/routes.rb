Rails.application.routes.draw do
  resources :projects, except:[:destroy] do
    resources :work_details, only: [:new, :create], module: :projects
  end
  resources :work_details, only:[:show] do
    resources :accomplishments, only:[:new, :create], module: :work_details
  end
  resources :accomplishments, only: [:edit, :update], module: :work_details
  resources :contractors, except:[:destroy]
   get 'dashboards/index', as: 'dashboard'
end
