Rails.application.routes.draw do
  devise_for :users, { registrations: 'users'}
  resources :users, only: [:index, :new, :create]
  namespace :monitoring do
    resources :projects, except:[:destroy] do
      resources :work_details, only: [:new, :create, :show], module: :projects
    end
    resources :work_details, only:[:edit, :update] do
      resources :accomplishments, only:[:new, :create], module: :work_details
      resources :additional_quantities, only:[:new, :create], module: :change_orders
    end
    resources :contractors, except:[:destroy]
  end
  resources :accomplishments, only: [:edit, :update], module: :work_details
  resources :additional_quantities, only: [:edit, :update], module: :change_orders

   get 'dashboards/index', as: 'dashboard'

  resources :equipment
  resources :inventories, only:[:index, :new, :create, :show] do
    resources :stocks, only:[:new, :create], module: :inventories
  end
end
