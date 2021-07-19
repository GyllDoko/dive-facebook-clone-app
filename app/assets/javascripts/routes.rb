Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    collection do 
      post :confirm 
    end
  end
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
end
