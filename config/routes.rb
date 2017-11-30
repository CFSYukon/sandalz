Rails.application.routes.draw do
  resources :work_orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#landing"

end
