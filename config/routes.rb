Rails.application.routes.draw do
  root :to => 'book_shelves#index'
  resources :users, only:[:new, :create, :update, :destroy]
  resources :book_shelves
  resources :stack_book_events do
    resources :read_book_events, only:[:new, :destroy]
  end
  resources :user_sessions, only:[:new, :create, :destroy]
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
