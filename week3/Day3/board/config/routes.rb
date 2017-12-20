Rails.application.routes.draw do
  root 'post#index'

  get 'post/index'
  get 'post/new' => 'post#new'
  get 'post/create'
  get 'post/show'
  get 'post/edit'
  get 'post/update'
  get 'post/destroy'

end
