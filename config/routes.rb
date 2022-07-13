Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :healths, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
  resources :contacts, only: [:new, :create]

  root 'top#index'
end
