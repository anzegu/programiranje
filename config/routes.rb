Rails.application.routes.draw do
  resources :problems 
  resources :codes

  get 'home/index'

  devise_for :users
  root 'home#index'
  get 'editor/:id/:lid' => 'home#editor', :as => :editor
  get 'challanges/' => 'problems#index_home', :as => :solve
  get 'languages/:id' => 'home#language', :as => :language
  get 'code_request/' => 'home#code_request', :as => :code_request
  get 'users/' => 'home#users', :as => :users
  get 'change/:id' => 'home#change', :as => :change
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
