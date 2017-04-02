Rails.application.routes.draw do

root 'dashboard#index'

  resources :companies do
    resources :contacts, only: [:create]
    resources :jobs do
      resources :comments, only: [:create]
    end
  end
  resources :categories
end
