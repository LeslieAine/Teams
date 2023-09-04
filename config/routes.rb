Rails.application.routes.draw do
  resources :projects
  resources :teams

  as :user do
    patch '/user/confirmation' => 'user/confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmation: 'confirmations'
  }
  root 'home#index'
end
