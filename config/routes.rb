Rails.application.routes.draw do
  resources :projects, except:[:destroy]
   get 'dashboards/index', as: 'dashboard'
end
