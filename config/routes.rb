Rails.application.routes.draw do

  resources :users 

  resources :listings do
    resources :reviews
  end

end
