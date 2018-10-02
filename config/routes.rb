Rails.application.routes.draw do
  
  get 'reg/index'

resources:reg
   root 'reg#index'
   
    get 'login/create'
  resources :login
root 'login#create'

 get 'articles/index'
  resources :articles
root 'articles#index'

 get 'editor/index'
  resources :editor
root 'editor#index'

get 'list/index'
  resources :list

root 'list#index'
get 'logout/index'
  resources :logout

root 'logout#index'
   
     
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
