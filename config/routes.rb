Rails.application.routes.draw do
  resources :projects, except:[:destroy] do
    resources :work_details, only: [:new, :create], module: :projects
  end
  resources :work_details, only:[:show] do
    resources :accomplishments, only:[:new, :create], module: :work_details
    resources :additional_quantities, only:[:new, :create], module: :change_orders
  end
  resources :accomplishments, only: [:edit, :update], module: :work_details
  resources :additional_quantities, only: [:edit, :update], module: :change_orders

  resources :contractors, except:[:destroy]
   get 'dashboards/index', as: 'dashboard'
end
