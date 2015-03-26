Rails.application.routes.draw do

  devise_for :users
  root :to => 'users#index'
  resources :users
  resources :listings do
    resources :reviews,  :except => [:index, :new]
  end
end
