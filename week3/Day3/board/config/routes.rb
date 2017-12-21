Rails.application.routes.draw do

  root 'post#index'

  get 'post/index'
  get 'post/new' => 'post#new'
  get 'post/create' => 'post#create'
  get 'post/show/:id' => 'post#show'
  get 'post/edit/:id' => 'post#edit'
  get 'post/update/:id' => 'post#update'
  get 'post/destroy/:id' => 'post#destroy'

  get 'user/new'
  post 'user/create' => 'user#create'
  get 'user/login' => 'user#login'
end
