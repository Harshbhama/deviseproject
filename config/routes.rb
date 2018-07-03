Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
post 'comments/create', to: 'comments#create', as: :comments
post 'likes/create', to: 'likes#create', as: :likes
  root 'posts#index'

  delete 'comments/:id/delete', to: 'comments#destroy', as: :delete_comments
  


end
