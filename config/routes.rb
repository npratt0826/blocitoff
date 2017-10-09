Rails.application.routes.draw do

  # resources :items
  devise_for :users

  root 'welcome#index'
  resources :users, only: [:show]
  get 'welcome/about'
  get 'welcome/index'
  resources :users, only: [] do
    resources :items, only: [:create, :new, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
