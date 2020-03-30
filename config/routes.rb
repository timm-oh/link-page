Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  scope module: :user, path: 'my' do
    resources :links
  end

  get "/:username", to: 'links#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
