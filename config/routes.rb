Rails.application.routes.draw do
  resources :companies
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    companies: 'companies#index',
    omniauth_callbacks: 'users/omniauth'
  }
  root 'home#index'
  get 'persons/profile', as: 'user_root'
  get 'users/edit', as: 'users_edit_path' 
end