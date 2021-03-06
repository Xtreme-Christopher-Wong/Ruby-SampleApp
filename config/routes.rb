# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact' #Exercise from 3.4.3 (added in 5.3.1 as part of sample_app)
  get '/signup',  to: 'users#new'
end