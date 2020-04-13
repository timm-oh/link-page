Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :links do
    patch "reorder", on: :collection
  end

  get '.well-known/acme-challenge/:passcode', to: "acme_challenges#show"
  get "/:username", to: 'displays#index', as: :user_display
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
