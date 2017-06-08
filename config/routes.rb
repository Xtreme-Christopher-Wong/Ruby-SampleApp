# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  
  #Exercise from 3.4.3
  get 'static_pages/contact'
end