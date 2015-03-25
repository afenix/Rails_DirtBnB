Rails.application.routes.draw do

  root :to => 'users#index'

  resources :users

  resources :listings do
    resources :reviews,  :except => [:index, :new]
  end
end
