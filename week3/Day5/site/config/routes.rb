Rails.application.routes.draw do

  root 'post#index'

  get 'post/index'
  get 'post/new' => 'post#new'
  get 'post/create' => 'post#create'
  get 'post/show/:id' => 'post#show'
  get 'post/edit/:id' => 'post#edit'
  get 'post/update/:id' => 'post#update'
  get 'post/destroy/:id' => 'post#destroy'

  get 'post/add_comment' => 'post#add_comment'
  get 'post/edit_comment/:id' => 'post#edit_comment'
  get 'post/delete_comment/:id' => 'post#delete_comment'

  get 'user/new'
  post 'user/create' => 'user#create'
  get 'user/login' => 'user#login'

end
