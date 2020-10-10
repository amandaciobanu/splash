Rails.application.routes.draw do
  devise_for :users, controllers:{
      confirmations: 'confirmations'
  }
  root to: "pages#index"
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
