Rails.application.routes.draw do
  # get 'numbers/index'
  # get 'numbers/new'
  # get 'numbers/edit'
  # get 'numbers/show'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'numbers#index'
  resources :numbers
  
end
