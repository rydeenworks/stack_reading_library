Rails.application.routes.draw do
  root :to => 'stack_book_events#index'
  resources :user_sessions, only:[:new, :create, :destroy]
  resources :users, only:[:new, :create, :update, :destroy]
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  resources :stack_book_events do
    resources :read_book_events, only:[:new, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
