Rails.application.routes.draw do
 
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: "users#new"
  get 'modal', to: 'users#modal'
 root 'static_pages#home'
 resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end