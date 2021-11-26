Rails.application.routes.draw do
  root 'home#index'
  namespace :users do
    get 'dashboard/index'
  end
  devise_for :users, :controllers => { sessions: 'users/sessions', registrations: 'users/registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
   devise_scope :user do
    get 'logout', to: 'users/sessions#destroy'
  #   authenticated :user do
  #     root 'home#index', as: :authenticated_root
  #   end
  
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
