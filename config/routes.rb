Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :show]
  
  resources :bands do
    resources :albums, only: [:index, :new, :create] 
  end
  
  resources :albums, except: [:index, :new, :create] do
    resources :tracks, only: [:index, :new, :create]
  end
  
  resources :tracks, except: [:index, :new, :create]
end
