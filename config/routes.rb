Rails.application.routes.draw do

  get 'inventory', to: 'inventory#index'
  namespace :inventory do
    resources :skus
  end

  resources :work_orders
  resources :line_items

  root 'static#landing'

## Need routing for generating new line items on work order

end
