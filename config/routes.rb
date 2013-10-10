Jerky::Application.routes.draw do

  root to: 'products#index'
  resources :products
  devise_for :users
  devise_scope :user do
    get 'login', :to => "devise/sessions#create"
    get 'logout', :to => "devise/sessions#destroy"
  end
end
