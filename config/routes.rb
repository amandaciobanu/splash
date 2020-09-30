Rails.application.routes.draw do
  devise_for :users, controllers:{
      confirmations: 'confirmations'
  }
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
