Rails.application.routes.draw do

  as :user do
    put '/user/confirmation' => 'confirmations#update', via: :patch, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmation: 'confirmations'
  }
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
