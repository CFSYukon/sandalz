Rails.application.routes.draw do
  
  namespace :inventory do
    resources :eaches
  end
  get 'inventory', to: 'inventory#index'
  namespace :inventory do
    resources :serial_numbers
    resources :skus
  end

  resources :work_orders

  root 'static#landing'

end
