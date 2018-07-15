Rails.application.routes.draw do
  
  resources :items
  resources :employs
   devise_for :users    #, path_names: { 
    #sign_up: '' #Stop Sign Up
  #}
  root to: 'holders#index'
  resources :holders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
