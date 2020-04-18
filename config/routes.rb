Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  #get 'welcome/index'
 
  resources :budgets do
    resources :items
  end
  
  resources :categories
  
 # root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
