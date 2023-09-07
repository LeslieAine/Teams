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

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 
  root 'home#index'
end
