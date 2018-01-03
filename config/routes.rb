Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :clients
  resources :products
  resources :providers
  resources :categories
  resources :brands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
