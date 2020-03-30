Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  scope module: 'users' do
    resource :setup, only: [:edit, :update], controller: :setups
  end

  resources :links

  get "/:username", to: 'displays#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
