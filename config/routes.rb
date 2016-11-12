Rails.application.routes.draw do
  resources :products
  root 'static_pages#index'

  get 'static_pages/index'

  get 'static_pages/indes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
