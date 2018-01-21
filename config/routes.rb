Rails.application.routes.draw do
  devise_for :users
  
  
  get 'reply/create'
  post 'reply/create/:id' => 'reply#create'
  get 'reply/destroy/:id' => 'reply#destroy'

  root 'post#index'
  get 'post/index'

  get 'post/show/:id' => 'post#show'

  get 'post/create'
  post 'post/create'
  
  
  get 'post/new'

  post 'post/update/:id' => 'post#update'
  
  get 'post/edit/:id' => 'post#edit'

  get 'post/destroy' => 'post#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
