Rails.application.routes.draw do

root 'welcome#index'

  resources :companies do
    resources :contacts
    resources :jobs do
      resources :comments
    end
  end
  resources :categories
end
