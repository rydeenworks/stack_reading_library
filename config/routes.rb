Rails.application.routes.draw do
  root :to => 'users#index'
  resources :user_sessions, only:[:new, :create, :destroy]
  resources :users
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  resources :stack_book_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
