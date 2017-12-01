Rails.application.routes.draw do
  
  get 'inventory', to: 'inventory#index'
  namespace :inventory do
    resources :serial_numbers
    resources :skus
  end

  resources :work_orders

  root 'static#landing'

end
