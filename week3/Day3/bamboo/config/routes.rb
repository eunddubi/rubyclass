Rails.application.routes.draw do
  root 'user#index'
  get 'user/index'
  get 'user/new'
  get 'user/create'
  get 'user/show/:id' => 'user#show'
  get 'user/update/:id' => 'user#update'
  get 'user/edit/:id' => 'user#edit'
  get 'user/destroy/:id' => 'user#destroy'


end
